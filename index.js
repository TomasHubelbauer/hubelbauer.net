// See https://github.com/TomasHubelbauer/github-action-auto-git-modules/blob/main/parseDotGitmodulesFile.js for original

const response = await fetch('.gitmodules');
const text = await response.text();

/** @type {string} */
let moduleName;

/** @type {string} */
let modulePath;

/** @type {string} */
let moduleUrl;

const lines = text.split('\n');
for (const line of lines) {
  if (line.startsWith('[submodule "') && line.endsWith('"]')) {
    moduleName = line.slice('[submodule "'.length, -'"]'.length);
  }
  else if (line.startsWith('\tpath = ')) {
    modulePath = line.slice('\tpath = '.length);
  }
  else if (line.startsWith('\turl = ')) {
    moduleUrl = line.slice('\turl = '.length);
  }
  else if (line === '') {
    if (moduleName === undefined && modulePath === undefined && moduleUrl === undefined) {
      return;
    }

    const a = document.createElement('a');
    a.text = moduleName;
    a.href = modulePath;
    a.title = moduleUrl;

    document.body.append(a);
  }
  else {
    throw new Error(`Unexpected line in .gitmodules: ${line}`);
  }
}
