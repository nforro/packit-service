#!/usr/bin/bash

set -x

source /src/files/setup_env_in_openshift.sh

id

cat "${HOME}/.config/packit-service.yaml"

alembic-3 upgrade head

python3 -m pytest -vv tests_openshift/
