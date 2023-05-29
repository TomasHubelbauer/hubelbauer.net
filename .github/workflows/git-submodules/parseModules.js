import fs from 'fs';

export default async function parseModules() {
  /** @type {string} */
  let text;

  try {
    text = await fs.promises.readFile('.gitmodules', 'utf-8');
  }
  catch (error) {
    if (error.code === 'ENOENT' || error.code === 'EACCES') {
      process.exit(0);
    }

    throw error;
  }

  /** @type {string} */
  let name;

  /** @type {string} */
  let path;

  /** @type {URL} */
  let url;

  /** @type {string} */
  let title;

  /** @type {string} */
  let description;

  /** @type {Date} */
  let createdAt;

  /** @type {Date} */
  let updatedAt;

  /** @type {Date} */
  let pushedAt;

  /** @type {URL} */
  let homepage;

  /** @type {boolean} */
  let archived;

  /** @type {string[]} */
  let topics;

  /** @type {{ name: string; path: string; url: URL; title: string; description: string; createdAt: Date; updatedAt: Date; pushedAt: Date; archived: boolean; topics: string[]; }} */
  const modules = [];
  const lines = text.split('\n').reverse();
  for (const line of lines) {
    if (!line) {
      continue;
    }

    if (line.startsWith('[submodule "') && line.endsWith('"]')) {
      name = line.slice('[submodule "'.length, -'"]'.length);

      modules.push({ name, path, url, title, description, createdAt, updatedAt, pushedAt, homepage, archived, topics });

      name = undefined;
      path = undefined;
      url = undefined;
      title = undefined;
      description = undefined;
      createdAt = undefined;
      updatedAt = undefined;
      pushedAt = undefined;
      homepage = undefined;
      archived = undefined;
      topics = undefined;
      continue;
    }

    if (!line.startsWith('\t')) {
      throw new Error(`Unexpected line (must start with a tab): ${line}`);
    }

    const [key, value, ...rest] = line.slice('\t'.length).split(' = ');
    if (rest.length > 0) {
      throw new Error(`Unexpected line (must have only one equal sign): ${line}`);
    }

    switch (key) {
      case 'path': {
        path = value;
        break;
      }
      case 'url': {
        url = value ? new URL(value) : undefined;
        break;
      }
      case 'title': {
        title = value;
        break;
      }
      case 'description': {
        description = value;
        break;
      }
      case 'created-at': {
        createdAt = new Date(value);
        break;
      }
      case 'updated-at': {
        updatedAt = new Date(value);
        break;
      }
      case 'pushed-at': {
        pushedAt = new Date(value);
        break;
      }
      case 'homepage': {
        homepage = value ? new URL(value) : undefined;
        break;
      }
      case 'archived': {
        if (value !== 'true' && value !== 'false') {
          throw new Error(`Unexpected archived value: ${value}`);
        }

        archived = value === 'true';
        break;
      }
      case 'topics': {
        topics = value.split(',');
        break;
      }
      default: {
        throw new Error(`Unexpected key: ${key}`);
      }
    }
  }

  return modules;
}
