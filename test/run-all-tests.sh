#!/bin/bash
set -e

# Usage:
#   Run all acceptance tests:
#     ./test/run-all-tests.sh

TEST_COMMAND='npm run test:ci'

export COMPOSE_EXPERIMENTAL_GIT_REMOTE=true
export CI=true

export ACCEPTANCE_TESTS_HOOK="
  docker compose -f https://github.com/DEFRA/grants-ui.git#main:compose.tests.yml run --interactive=false -T --quiet-pull --rm grants-ui-acceptance-tests $TEST_COMMAND &&
  docker compose -f https://github.com/DEFRA/grants-ui.git#main:compose.tests.yml down
"
mkdir -p test/testconfig
cp -r example-grant-with-auth/ test/testconfig/example-grant-with-auth@0.0.0
cp $(dirname "$0")/release.yml test/testconfig/

"$(dirname "$0")/docker-compose-smoke-test.sh"
