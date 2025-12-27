import parseModules from './parseModules.ts';

const modules = await parseModules();

const errors: string[] = [];
for (const module of modules) {
  if (module.name !== module.path) {
    errors.push(`Module "${module.name}" has a different name and path.`);
  }

  if (!module.url) {
    errors.push(`Module "${module.name}" is missing a URL.`);
  }
  else if (module.url.hostname !== 'github.com') {
    errors.push(`Module "${module.name}" has a non-GitHub URL.`);
  }

  if (!module.title) {
    errors.push(`Module "${module.name}" is missing a title.`);
  }

  if (!module.description) {
    errors.push(`Module "${module.name}" is missing a description.`);
  }

  if (!module.homepage) {
    errors.push(`Module "${module.name}" is missing a homepage.`);
  }

  if (module.topics.length === 0) {
    errors.push(`Module "${module.name}" is missing topics.`);
  }
}

if (errors.length > 0) {
  throw new Error(errors.join('\n'));
}
