import parseModules from './parseModules.ts';

const modules = await parseModules();

const errors: string[] = [];
for (const module of modules) {
  const id = module.url?.href ?? module.name;

  if (module.name !== module.path) {
    errors.push(`${id} has a different name and path.`);
  }

  if (!module.url) {
    errors.push(`${id} is missing a URL.`);
  }
  else if (module.url.hostname !== 'github.com') {
    errors.push(`${id} has a non-GitHub URL.`);
  }

  if (!module.title) {
    errors.push(`${id} is missing a title.`);
  }

  if (!module.description) {
    errors.push(`${id} is missing a description.`);
  }

  if (!module.homepage) {
    errors.push(`${id} is missing a homepage.`);
  }

  if (module.topics.length === 0) {
    errors.push(`${id} is missing topics.`);
  }
}

if (errors.length > 0) {
  throw new Error(errors.join('\n'));
}
