---
title: Contributing Guidelines
permalink: /contributing
---

<!--
  SPDX-FileCopyrightText: 2023 Pablo Hörtner
  SPDX-License-Identifier:  CC-BY-SA-4.0
  https://spdx.org/licenses/CC-BY-SA-4.0
-->

1. [We need you](#we-need-you)
2. [Environment setup](#environment-setup)
3. [Conventional commits](#conventional-commits)
4. [Pull requests guidelines](#pull-requests-guidelines)
5. [Versioning](#versioning)

## We need you

👋  Welcome to redgnus! We love contributions from the community,
feedback and new ideas. Bug reports and pull requests are welcome.

It is a pleasure for us to have you here. Your help is needed and
highly appreciated. Here are some hints where to start, and how...

This project is intended to be a safe and welcoming space for teams
and individuals aiming at improving it through their collaboration.
Contributors are expected to adhere to these [Community Guidelines].

If you encounter abusive behavior, please refer to the [Enforcement]
section (aka Policy Violation) of the Community Guidelines (aka Code
of Conduct) for information on how to raise a complaint (PM [redtux]).

## Environment setup

We kindly ask all contributors to stick to the project layout and
directory structure both for new and for existing projects inside
the `redgnus` namespace. Use these linters before each new commit.

- [ ] [actionlint] (linter for GitHub Actions)
- [x] [dotenv-linter] (linter for `.env` files)
- [x] [editorconfig-checker] (linter using `.editorconfig`)
- [ ] [markdownlint] (linter for markdown files)
- [ ] [MegaLinter] (linter collection for CI/CD pipelines)
- [x] [shellcheck] (linter for shell scripts)
- [x] [yamllint] (linter for yaml files)
- [ ] [hadolint] (linter for `Dockerfile`)

A working development environment is being initiated by the following commands:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
```

The used linting tools can also be installed manually by the following commands:

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

All redgnus projects follow the [Conventional Commits] specification. Therefore,
all commit messages must follow the [Angular style standard] as described below.

```bash
<type>[(scope)]: Subject
[Body]
```

Scope and body are optional. Type can be:

- `build`: About packaging, building wheels, etc.
- `chore`: About packaging or repo/files management.
- `ci`: About Continuous Integration.
- `docs`: About documentation.
- `feat`: New feature.
- `fix`: Bug fix.
- `perf`: About performance.
- `refactor`: Changes which are not features nor bug fixes.
- `style`: A change in code style/format.
- `tests`: About tests.

**Subject (and body) must be valid Markdown.**
If you write a body, please add issues references at the end:

```bash
Body.
See #10, #11
Close #15
```

## Pull requests guidelines

Link to any related issue in the Pull Request message.

During review, we recommend using fixups:

```bash
# SHA is the SHA of the commit you want to fix
git commit --fixup=SHA
```

Once all the changes are approved, you can squash your commits:

```bash
git rebase -i --autosquash main
```

Then you should push your changes to the remote origin repository:

```bash
git push
```

## Versioning

- [GitVersion Documentation](https://gitversion.net/docs/)
- [Renovate Dependency Management Docs](https://docs.renovatebot.com/)
- [Semantic Versioning Specification](https://semver.org/spec/v2.0.0.html)

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
