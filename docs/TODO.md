---
title: Todo list
permalink: /todo
---

<!--
  SPDX-FileCopyrightText: 2023 Pablo Hörtner <redtux@pm.me>
  SPDX-License-Identifier:  CC-BY-SA-4.0
  https://spdx.org/licenses/CC-BY-SA-4.0
-->

1. [Project health](#project-health)
2. [License files](#license-files)
3. [Dotfiles](#dotfiles)
4. [Manifest files](#manifest-files)
5. [Continuous integration](#continuous-integration)
6. [Project documentation](#project-documentation)

## Project health

These files are named in capital letters by convention. They should exist
in every project hosted by redgnus & related organisations like pandainfo.

- [x] docs: add readme file
- [x] docs: add code of conduct
- [x] docs: add contributing guidelines
- [x] docs: add todo list
- [ ] docs: add changelog file
- [ ] build: add ansible playbook
- [ ] build: add ansible scripts
- [ ] build: add mkdocs scripts
- [ ] build: add setup script

## License files

The root directory of the project should include a `LICENSE` file. Depending
on the repository's main purpose this can be GNU AGPL v3.0, CC BY SA, or MIT.

For reference, license files should be included in `docs` in Markdown format.

- [x] docs: add AGPL-3.0 license file for code and binaries
- [x] docs: add CC-BY-SA-4.0 license file for documentation
- [x] docs: add MIT license file for code examples
- [ ] docs: add copyright notes and license terms
- [ ] docs: add credits and attribution notes
- [ ] docs: add licensing overview
- [x] docs: add copyright and licensing header to all files
- [x] docs: add badge for REUSE compliance to readme

## Dotfiles

These files are named in small letters starting by a dot to indicate that
they are essential configuration files for important tools of the project.

- [x] chore: set recommended extensions for vscode and codium
- [x] chore: set workspace settings for vscode and codium
- [ ] chore: integrate task scripts to vscode and codium
- [ ] chore: specify ansible linter rules to be excluded
- [ ] chore: specify cspell
- [ ] chore: specify dockerignore exclude patterns
- [ ] chore: specify EditorConfig style guidelines
- [ ] chore: specify environment variables
- [ ] chore: specify ESLint config and style checking rules
- [ ] chore: specify git attributes
- [x] chore: specify gitignore exclude patterns
- [ ] chore: specify npmignore exclude patterns

## Manifest files

Think of these files as GNU Makefiles or build recipes for this project.

- [ ] build: add ansible configuration
- [ ] build: add docker compose configuration
- [ ] build: add docker image configuration
- [x] build: add mkdocs configuration
- [x] build: add npm configuration
- [x] build: add pip requirements file
- [x] build: set GitHub Pages root directory to `_site`

## Continuous integration

For the time being, redgnus uses GitHub Actions for all CI/CD pipelines.
This might be replaced by [GitLab CI] or [Drone CI] ([Woodpecker]) soon.

- [ ] chore: add issue templates
- [ ] chore: add pull request template
- [ ] ci: add CI workflows
- [x] ci: add dependency management configuration
- [x] ci: add license compliance check
- [x] ci: mark stale issues and pull requests
- [x] ci: publish redgnus docs
- [ ] ci: run linting jobs
- [x] ci: welcome new contributors

## Project documentation

- [ ] docs: improve compliance with the standard-readme specification
- [ ] docs: add project logo
- [ ] docs: add project banner
- [ ] docs: add about page
- [ ] docs: add getting started page
- [ ] docs: add landing page
- [ ] docs: add quick start instructions
- [ ] docs: add table of contents
- [ ] docs: archive docs as PDF files
- [ ] docs: describe documentation management
- [ ] docs: describe environment settings
- [ ] docs: describe requirements

<!-- References -->
[GitLab CI]: https://docs.gitlab.com/ee/ci/
[Drone CI]: https://github.com/harness/drone#readme
[Woodpecker]: https://github.com/woodpecker-ci/woodpecker#readme
