---
title: Contributing Guidelines
permalink: /contributing
---

<!--
  SPDX-FileCopyrightText: 2023 Pablo Hörtner <redtux@pm.me>
  SPDX-License-Identifier:  CC-BY-SA-4.0
  https://spdx.org/licenses/CC-BY-SA-4.0
-->

1. [Join our team](#join-our-team)
2. [Environment setup](#environment-setup)
3. [Conventional commits](#conventional-commits)
4. [Pull requests guidelines](#pull-requests-guidelines)
5. [Versioning](#versioning)

## Join our team

👋  Welcome to REDGNUS!

All contributions from the community, feedback, innovative ideas,
bug reports, pull requests, and doc translations are most welcome.

It is a pleasure for our team to have you here. Any help is highly
appreciated. Here are some brief hints on where to start, and how.

This project aims to be a comfortable and welcoming space for teams
and for individuals who constantly improve it through collaboration.
Every contributor will need to adhere to our [Community Guidelines].

Did you face abusive behavior in this project? Sorry!!! Refer to the
[Enforcement] section (Policy Violation) of the Community Guidelines
(Code of Conduct) for information on how to raise a complaint (PM [redtux]).

## Environment setup

The project maintainers kindly ask all contributors to stick to the
project layout, and to the directory structure – for future and for
existing projects inside the `redgnus` namespace. Here is a list of
linters that our team uses before every commit. Hope you'll enjoy it!

- [ ] [actionlint] (linter for GitHub Actions)
- [x] [dotenv-linter] (linter for `.env` files)
- [x] [editorconfig-checker] (linter using `.editorconfig`)
- [ ] [markdownlint] (linter for Markdown files)
- [ ] [MegaLinter] (linter collection for CI/CD pipelines)
- [x] [shellcheck] (linter for shell scripts)
- [x] [yamllint] (linter for YAML files)
- [ ] [hadolint] (linter for `Dockerfile`)

To start a development environment, run the following commands:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
```

To manually install all linting tools, run the following commands:

```bash
pip3 install --user --upgrade pip
pip3 install --user dotenv-linter
pip3 install --user editorconfig-checker
pip3 install --user hadolintw
pip3 install --user mkdocs-material
pip3 install --user mkdocs-with-pdf
pip3 install --user shellcheck-py
pip3 install --user yamllint
pip3 install --user wheel
pip3 install --user git+git://github.com/AleksaC/hadolint-py.git@v2.8.0
npm install -g markdownlint-cli
```

## Conventional commits

All REDGNUS projects follow the [Conventional Commits] specification. Therefore,
all commit messages must follow the [Angular style standard], as described here.

```bash
<type>[(scope)]: Subject
[Body]
```

Scope and body are optional. Type can be:

- `build`: About packaging and building wheels
- `chore`: About packaging or files management
- `ci`: About Continuous Integration pipelines
- `docs`: About documentation & DEV guidelines
- `feat`: Introducing a feature or enhancement
- `fix`: a. Fixing a bug – b. Closing an issue
- `perf`: About a. performance – b. monitoring
- `refactor`: Change that is no feature or fix
- `style`: Changes in code style / code format
- `tests`: About QA policy or test integration

**Subject (and body) must be valid Markdown.**
If you write a body, add references to issues or tracking numbers at the end:

```bash
Body.
See #10, #11
Close #15
```

## Pull requests guidelines

Link to any related issue in the Pull Request message.

During review, our team recommends using `fixup`:

```bash
# SHA is the SHA of the commit you want to fix
git commit --fixup=SHA
```

On approval of all changes after a review, you can squash your commits:

```bash
git rebase -i --autosquash main
```

Finally, push your changes to the remote origin repository:

```bash
git push
```

## Versioning

- [GitVersion Documentation](https://gitversion.net/docs/)
- [Renovate Dependency Management Docs](https://docs.renovatebot.com/)
- [Semantic Versioning Specification](https://semver.org/spec/v2.0.0.html)

<!-- editorconfig-checker-disable -->
<!-- References -->
[Community Guidelines]: CODE_OF_CONDUCT.md "Contributor Code of Conduct"
[Enforcement]: CODE_OF_CONDUCT.md#enforcement "CoC · Policy Violations"
[redtux]: https://redtux.github.io/redtux "@redtux aka Pablo Hörtner on github"
[actionlint]: https://github.com/rhysd/actionlint#readme
[dotenv-linter]: https://github.com/wemake-services/dotenv-linter#readme
[editorconfig-checker]: https://github.com/editorconfig-checker/editorconfig-checker#readme
[hadolint]: https://github.com/hadolint/hadolint#readme
[markdownlint]: https://github.com/igorshubovych/markdownlint-cli#readme
[MegaLinter]: https://github.com/megalinter/megalinter/#readme
[shellcheck]: https://github.com/koalaman/shellcheck#readme
[yamllint]: https://github.com/adrienverge/yamllint#readme
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/#summary
[Angular style standard]: https://gist.github.com/stephenparish/9941e89d80e2bc58a153#format-of-the-commit-message
