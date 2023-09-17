#!/usr/bin/env bash
# vim: set ai expandtab sw=2 ts=2 sts=2 re=2:
#
# SPDX-FileCopyrightText: 2023 Pablo Hörtner <redtux@pm.me>
# SPDX-License-Identifier: AGPL-3.0-or-later
#
# Copyright © 2023 by Pablo Hörtner <redtux@pm.me>. All rights reserved.
# You can find the AGPL v3.0 here: https://www.gnu.org/licenses/agpl-3.0
# Attribution required if you use this file (or parts) in your projects.
#
# redgnus setup script

# enable strict mode
IFS=$'\n\t'

# fail on undefined variables
set -u

# fail on failure
set -e

# fail on pipe failure
set -o pipefail

# set environment variables
ENVIRONMENT="${PWD}/.env"
if [[ ! -f "${ENVIRONMENT}" ]]; then
  cp -a example.env "${ENVIRONMENT}"
fi

# shellcheck source=/dev/null
source "${ENVIRONMENT}"

# set script variables
ORG="${ORG:-redgnus}"
NAME="${NAME:-template}"
VERSION="${VERSION:-0.1.0}"
LOGO_FILE="${LOGO_FILE:-./logo.txt}"

# check system requirements
set +ue
PYTHON_VERSION="$(python3 --version | awk '{print $2}')"
set -ue
SYSTEM_VERSION="$(lsb_release -ds)"
KERNEL_NAME="$(uname -s)"
KERNEL_VERSION="$(uname -r)"
BASH_SEMVER="${BASH_VERSINFO[0]}.${BASH_VERSINFO[1]}.${BASH_VERSINFO[2]}"

# set message strings
TITLE=" :: welcome to ${ORG} ${NAME} ${VERSION} :: "
VERSION_MSG="⚙️  SYSTEM ENVIRONMENT

*️  Shell:  Bash ${BASH_SEMVER} (GNU Bourne Again SHell)
*️  System: ${SYSTEM_VERSION}
*️  Kernel: ${KERNEL_NAME} ${KERNEL_VERSION}
*️  Python: ${PYTHON_VERSION:-missing}"
ERR_MSG="❌ Canceled: Please install Python 3 and try again... 👋 Bye!"
ERR_BOX="
${VERSION_MSG}

${ERR_MSG}
"

# set dialog as fallback if whiptail is missing
if [[ $(which -a whiptail) ]]; then
  DIALOG=whiptail
else
  DIALOG=dialog
fi

# display start dialog
clear
${DIALOG} --title "${TITLE^^}" --textbox "${LOGO_FILE}" 20 78

# fail if python is missing
if [[ ! "${PYTHON_VERSION}" ]]; then
  ${DIALOG} --title "${TITLE^^}" --msgbox "${ERR_BOX}" 15 60
  exit
fi

# display installed versions
${DIALOG} --title "${TITLE^^}" --msgbox "${VERSION_MSG}" 12 54

# start setup
cmd1="python3 -m venv .venv"
msg1=" Preparing Python environment..."
cmd2="source .venv/bin/activate"
msg2=" Enabling virtual environment..."
cmd3="pip3 install -qr ./requirements.txt"
msg3=" Getting Python dependencies..."
cmd4="mkdocs -q build"
msg4=" Building documentation..."
msgs=("${msg1}"
      "${msg2}"
      "${msg3}"
      "${msg4}")
cmds=("${cmd1}"
      "${cmd2}"
      "${cmd3}"
      "${cmd4}")
n=${#cmds[@]}
i=0
while [ "$i" -lt "$n" ]; do
  pct=$(( i * 100 / n ))
  echo XXX
  echo "${i}"
  echo "${msgs[i]}"
  echo XXX
  echo "${pct}"
  eval "${cmds[i]}"
  i=$((i + 1))
done | ${DIALOG}  --title "${TITLE^^}" \
                  --gauge "Installing Python packages, please wait..." 6 78 0

${DIALOG} --title "${TITLE^^}" --textbox /dev/stdin 16 60 <<<"$(cat .env)"
exit
