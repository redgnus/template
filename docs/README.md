---
title: ✨Free Software✨ for a ✨Free Society✨
permalink: /
---

<!--
  vim: set ai expandtab sw=2 ts=2 sts=2 re=2 ft=markdown:
  code: filetype=markdown

  SPDX-FileCopyrightText: 2023 Pablo Hörtner <redtux@pm.me>
  SPDX-License-Identifier:  CC-BY-SA-4.0
  https://spdx.org/licenses/CC-BY-SA-4.0

  NOTE: Attribution required if you use this file (or parts) in your projects.
-->

![banner](https://raw.githubusercontent.com/redgnus/logo/main/logo.svg)

<!-- editorconfig-checker-disable -->
[![REUSE Compliance](https://img.shields.io/reuse/compliance/github.com/redgnus/template?color=blue&label=REUSE)](https://api.reuse.software/info/github.com/redgnus/template)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![license](https://img.shields.io/github/license/redgnus/template?color=blue)](https://raw.githubusercontent.com/redgnus/template/main/LICENSE)
![issues](https://img.shields.io/github/issues-raw/redgnus/template?color=blue)
[![docs](https://github.com/redgnus/template/actions/workflows/pages/pages-build-deployment/badge.svg?branch=gh-pages)](https://redgnus.github.io/template/)
<!-- editorconfig-checker-enable -->

> **RED·GNUS ✨ 100% FREE SOFTWARE**

- [x] 👋 Hi and welcome to the REDGNUS project! Visit us at [redgnus.github.io].
- [x] 👀 Our team aims at helping to build ✨FREE SOFTWARE FOR A FREE SOCIETY✨.
- [x] 🌱 Our team is currently testing to build a private cloud on Raspberry Pi.
- [x] 💞️ Our team is looking to work together with you on improving our service.
- [x] 📫 Get in touch with us at <<vwb4yxi6w@mozmail.com>>, or on [twitter] / X.

> **Table of Contents**

- [Background](#background)
  - [Our Team](#our-team)
  - [Our Vision](#our-vision)
  - [Our Mission](#our-mission)
- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
  - [We love your code](#we-love-your-code)
  - [Community guidelines](#community-guidelines)
  - [Reporting bad conduct](#reporting-bad-conduct)
- [License](#license)
  - [Project](#project)
  - [Documentation](#documentation)
  - [Code examples](#code-examples)

## Background

> **✨FREE SOFTWARE✨ FOR A ✨FREE SOCIETY✨**

### Our Team

> **Argo is an IT Coop from Austria, governed exclusively by its members.**

Many of us have been entrepreneurs in IT for years. These team members form the
partner network and use the server infrastructure of the coop IT machinery ring.

Our cloud services for communication and organization run exclusively on the
cooperative's own secure server infrastructure in Austrian or EU data centers.

The services are available to our members in a variety of subscription models:
from the free "basic digital supply" to an individually compiled collaborative
business suite that can be used to completely map out everyday digital business.

### Our Vision

> **Argo fights for digital sovereignty, secure public services, and privacy.**

We share the vision of a future in which everyone can naturally maintain their
digital sovereignty and privacy.  Therefore, Argo IT Coop demands and promotes
a counter-movement to a. the ever-growing tech giants, and b. the increasingly
centralized internet of corporate cloud providers. No support for big business!

### Our Mission

> **Argo Services are integrated, fully automated, and scalable IT solutions.**

System administrators and developers love automation. With strong focus on our
specific customer needs and on future challenges, our team aims at building an
integrated, fully automated, and scalable solution for provisioning, deploying,
and maintaining our enterprise-grade Argo Services, like the Argo Mail Gateway,
the Argo Groupware, the Argo Automation Hub, or the Argo Monitoring Platform. 🚀

## Install

> **Create a python3 virtual environment for clean dependencies.**

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install --upgrade wheel
pip install --upgrade --requirement requirements.txt
pip install --upgrade nodeenv
.venv/bin/nodeenv -n system .nodeenv
source .nodeenv/bin/activate
```

## Usage

> **Template files for REDGNUS projects**

```bash
cp -afv example.env .env
editor .env
export $(cat .env | xargs)  # load environment
./setup.sh
```

NOTE: This project uses TODO-Driven Development - which
might be comparable to [Readme Driven Development][RDD].

[RDD]: https://tom.preston-werner.com/2010/08/23/readme-driven-development.html

Start a code repository by writing a README, defining at least the following:

- [ ] **Mission:** Principal aims and `visions` of the project
- [ ] **Features:** Some ideas or a `wishlist` for the project
- [ ] **Tools:** Build tools and `dev environment` - if needed

For major milestones, start with a `TODO.md` file, and keep track of progress.

## Maintainers

- [@redgnus](https://github.com/redgnus)
- [@redtux](https://github.com/redtux)

## Contributing

> **All PRs accepted!**

### We love your code

Thank you for your interest in REDGNUS! Contributions are love. 💞️

Are you a newcomer? To get started contributing, just refer to:

- The [Contributing Guidelines]
- The [Free System Distribution Guidelines][FSDG]

Small note:
If editing the README, please conform to the [Standard Readme] specification.

### Community guidelines

This project aims to be a comfortable and welcoming space for teams
and for individuals who constantly improve it through collaboration.
Every contributor will need to adhere to our [Community Guidelines].

### Reporting bad conduct

Did you face abusive behavior in this project? Sorry!!! Refer to the
[Enforcement] section (Policy Violation) of the Community Guidelines
(Code of Conduct) for information on how to raise a complaint (PM [redtux]).

## License

> **Copyright © 2023 [Pablo Hörtner](https://redtux.github.io/) & Contributors**

### Project

- [GNU Affero General Public License 3.0 or later][AGPL-3.0-or-later]

### Documentation

- [Creative Commons Attribution-ShareAlike 4.0][CC-BY-SA-4.0]

### Code examples

- [The MIT License][MIT]

<!-- References -->
[AGPL-3.0-or-later]: https://spdx.org/licenses/AGPL-3.0-or-later "GNU AGPL 3.0"
[CC-BY-SA-4.0]: https://spdx.org/licenses/CC-BY-SA-4.0 "CC BY-SA 4.0 License"
[Community Guidelines]: CODE_OF_CONDUCT.md "Contributor Code of Conduct"
[Contributing Guidelines]: CONTRIBUTING.md "How to contribute to redgnus"
[Enforcement]: CODE_OF_CONDUCT.md#enforcement "CoC · Policy Violations"
[FSDG]: https://www.gnu.org/distros/free-system-distribution-guidelines.html
[MIT]: https://spdx.org/licenses/MIT "The MIT License"
[redgnus.github.io]: https://redgnus.github.io/ "redgnus on github"
[redtux]: https://redtux.github.io/redtux "@redtux aka Pablo Hörtner on github"
[Standard Readme]: https://github.com/RichardLitt/standard-readme#readme
[twitter]: https://twitter.com/redgnus "redgnus on twitter"
