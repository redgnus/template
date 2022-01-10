---
title: Todo list
permalink: /todo
---

<!--
  SPDX-FileCopyrightText: 2022 Pablo Hörtner
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

## License files

The root directory of the project should include a `LICENSE` file. Depending
on the repository's main purpose this can be GNU AGPL v3.0, CC BY SA, or MIT.

For reference, license files should be included in `docs` in markdown format.

- [ ] docs: add AGPL-3.0 license file for code and binaries
- [ ] docs: add CC-BY-SA-4.0 license file for documentation
- [ ] docs: add MIT license file for code examples
- [ ] docs: add copyright notes and license terms
- [ ] docs: add credits and attribution notes
- [ ] docs: add licensing overview

## Dotfiles

These files are named in small letters starting by a dot to indicate that
they are essential configuration files for important tools of the project.

- [ ] chore: set recommended extensions for vscode and codium
- [ ] chore: set workspace settings for vscode and codium
- [ ] chore: specify ansible linter rules to be excluded
- [ ] chore: specify cspell
- [ ] chore: specify dockerignore exclude patterns
- [ ] chore: specify editorconfig style guidelines
- [ ] chore: specify environment variables
- [ ] chore: specify eslint config and style checking rules
- [ ] chore: specify git attributes
- [ ] chore: specify gitignore exclude patterns
- [ ] chore: specify npmignore exclude patterns

## Manifest files

Think of these files as GNU Makefiles or build recipes for this project.

- [ ] build: add docker compose configuration
- [ ] build: add docker image configuration
- [ ] build: add npm configuration
- [x] build: add pip requirements file

## Continuous integration

For the time being, redgnus uses GitHub Actions for all CI/CD pipelines.
This might be replaced by [GitLab CI] or [Drone CI] ([Woodpecker]) soon.

- [ ] chore: add issue templates
- [ ] ci: add CI workflows
- [x] ci: add dependency management configuration
- [x] ci: mark stale issues and pull requests
- [ ] ci: publish redgnus docs
- [ ] ci: run linting jobs
- [ ] ci: welcome new contributors

## Project documentation

- [ ] docs: add about page
- [ ] docs: add getting started page
- [ ] docs: add project documentation config file
- [ ] docs: add project documentation landing page
- [ ] docs: add quick start instructions
- [ ] docs: add table of contents
- [ ] docs: archive docs as pdf files
- [ ] docs: describe documentation management
- [ ] docs: describe environment settings
- [ ] docs: describe requirements

<!-- References -->
[GitLab CI]: https://docs.gitlab.com/ee/ci/
[Drone CI]: https://github.com/harness/drone#readme
[Woodpecker]: https://github.com/woodpecker-ci/woodpecker#readme
