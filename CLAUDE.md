# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with
code in this repository.

## Project Overview

Personal portfolio website hosted on GitHub Pages that aggregates Git submodules
(other GitHub repositories) into a single landing page.
Uses Jekyll with Liquid templating for static site generation.

## Commands

```bash
bun install                                       # Install dependencies
bun .github/workflows/git-submodules/scan.ts      # Scan for new repos (needs GITHUB_TOKEN)
bun .github/workflows/git-submodules/lint.ts      # Validate submodule metadata
```

## Architecture

**Frontend:** `index.html` uses Liquid templating to parse `.gitmodules` and
dynamically render project cards.
Jekyll config (`_config.yml`) includes `.gitmodules` as a data source.

**Submodule System:** Repositories tagged with `hubelbauer-net` topic on GitHub
are automatically discovered by `scan.ts` and added to `.gitmodules`.
The `github-action-auto-git-modules` action syncs metadata from GitHub API.
`lint.ts` validates all submodules have required fields: matching name/path,
URL (must be github.com), title, description, homepage, and at least one topic.

**Infrastructure Monitoring:** Multiple GitHub Actions workflows check DNS
records, SSL certificates, and HTTP redirects for various domains.
These run hourly via cron.

## Submodule Metadata Format

`.gitmodules` uses custom properties beyond standard Git:

```
[submodule "repo-name"]
	path = repo-name
	url = https://github.com/TomasHubelbauer/repo-name
	title = Human Readable Title
	description = One-line description
	homepage = https://hubelbauer.net/repo-name/
	topics = topic1,topic2
	created-at = 2025-01-01T00:00:00Z
	updated-at = 2025-01-01T00:00:00Z
	pushed-at = 2025-01-01T00:00:00Z
	archived = false
```

## Adding New Projects

Tag any GitHub repository with the `hubelbauer-net` topic.
The hourly `git-submodules` workflow will detect it and add a placeholder.
The `github-action-auto-git-modules` action populates metadata from GitHub API.
Ensure the repo has description, homepage, and topics set on GitHub.
