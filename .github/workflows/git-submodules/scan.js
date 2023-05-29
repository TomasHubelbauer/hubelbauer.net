import fs from 'fs';
import parseModules from './parseModules.js';

const modules = await parseModules();

if (!process.env.GITHUB_TOKEN) {
  throw new Error('GITHUB_TOKEN environment variable must be set to scan repositories.');
}

/** @type {{ name: string; description: string; homepage: string; topics: string[]; }[]} */
const repositories = [];
let page = 1;
do {
  const headers = { Authorization: `token ${process.env.GITHUB_TOKEN}` };
  const response = await fetch('https://api.github.com/users/tomashubelbauer/repos?per_page=100&page=' + page, { headers });
  const data = await response.json();
  repositories.push(...data);

  console.log(`Fetched page ${page} and got ${data.length} repositories.`);
  if (data.length < 100) {
    console.log('Stopped to look for more repositories.');
    break;
  }

  page++;
}
while (true);

for (const repository of repositories) {
  if (!repository.topics?.includes('hubelbauer-net')) {
    continue;
  }

  const isNew = !modules.find(module => module.name === repository.name);
  console.log(`${isNew ? 'New' : 'Existing'} tagged repository: ${repository.name}`);

  if (isNew) {
    await fs.promises.appendFile('.gitmodules', `\n#+ ${repository.html_url}\n`);
    console.log(`Added ${repository.name} to .gitmodules`);

    // Populate the commit message buffer file of the github-action-auto-git-modules GitHub Action
    await fs.promises.appendFile('.git/commit-message.txt', `Add ${repository.name} to .gitmodules\n`);
  }
}
