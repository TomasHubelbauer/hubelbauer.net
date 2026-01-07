import parseModules from './parseModules.ts';

type Repository = {
  name: string;
  description: string;
  homepage: string;
  topics: string[];
  html_url: string;
};

const modules = await parseModules();

if (!process.env.GITHUB_TOKEN) {
  throw new Error(
    'GITHUB_TOKEN environment variable must be set to scan repositories.'
  );
}

const repositories: Repository[] = [];
let page = 1;
do {
  const headers = { Authorization: `token ${process.env.GITHUB_TOKEN}` };
  const response = await fetch(
    'https://api.github.com/users/tomashubelbauer/repos?per_page=100&page=' +
      page,
    { headers }
  );
  const data = await response.json();
  if (!response.ok) {
    throw new Error(`GitHub API error: ${response.status} ${JSON.stringify(data)}`);
  }
  repositories.push(...(data as Repository[]));

  console.log(`Fetched page ${page} and got ${data.length} repositories.`);
  if (data.length < 100) {
    console.log('Stopped to look for more repositories.');
    break;
  }

  page++;
} while (true);

for (const repository of repositories) {
  if (!repository.topics?.includes('hubelbauer-net')) {
    continue;
  }

  const isNew = !modules.find((module) => module.name === repository.name);
  console.log(
    `${isNew ? 'New' : 'Existing'} tagged repository: ${repository.name}`
  );

  if (isNew) {
    const gitmodulesFile = Bun.file('.gitmodules');
    const existingContent = await gitmodulesFile.text();
    await Bun.write('.gitmodules', existingContent + `\n#+ ${repository.html_url}\n`);
    console.log(`Added ${repository.name} to .gitmodules`);

    // Populate the commit message buffer file of the github-action-auto-git-modules
    // GitHub Action
    const commitMessageFile = Bun.file('.git/commit-message.txt');
    let commitContent = '';
    if (await commitMessageFile.exists()) {
      commitContent = await commitMessageFile.text();
    }
    await Bun.write(
      '.git/commit-message.txt',
      commitContent + `Add ${repository.name} to .gitmodules\n`
    );
  }
}
