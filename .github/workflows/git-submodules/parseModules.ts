type Module = {
  name: string;
  path: string;
  url: URL | undefined;
  title: string | undefined;
  description: string | undefined;
  createdAt: Date | undefined;
  updatedAt: Date | undefined;
  pushedAt: Date | undefined;
  homepage: URL | undefined;
  archived: boolean | undefined;
  topics: string[];
};

export default async function parseModules() {
  const file = Bun.file('.gitmodules');
  if (!await file.exists()) {
    process.exit(0);
  }

  const text = await file.text();

  let name: string | undefined;
  let path: string | undefined;
  let url: URL | undefined;
  let title: string | undefined;
  let description: string | undefined;
  let createdAt: Date | undefined;
  let updatedAt: Date | undefined;
  let pushedAt: Date | undefined;
  let homepage: URL | undefined;
  let archived: boolean | undefined;
  let topics: string[] | undefined;

  const modules: Module[] = [];
  const lines = text.split('\n').reverse();
  for (const line of lines) {
    if (!line) {
      continue;
    }

    if (line.startsWith('[submodule "') && line.endsWith('"]')) {
      name = line.slice('[submodule "'.length, -'"]'.length);

      modules.push({
        name,
        path: path!,
        url,
        title,
        description,
        createdAt,
        updatedAt,
        pushedAt,
        homepage,
        archived,
        topics: topics ?? []
      });

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
