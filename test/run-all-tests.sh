#!/bin/bash
set -e

# Usage:
#   Run all acceptance tests:
#     ./test/run-all-tests.sh

TEST_COMMAND='npm run test:ci'

export COMPOSE_EXPERIMENTAL_GIT_REMOTE=true
export CI=true

export ACCEPTANCE_TESTS_HOOK="
  docker compose -f compose.tests.yml run --quiet-pull --rm grants-ui-acceptance-tests $TEST_COMMAND &&
  docker compose -f compose.tests.yml down
"
curl -L https://raw.githubusercontent.com/DEFRA/grants-ui/main/compose.tests.yml -o compose.tests.yml

mkdir -p test/testconfig
cp -r example-grant-with-auth/ test/testconfig/example-grant-with-auth@0.0.0
cp $(dirname "$0")/release.yml test/testconfig/

"$(dirname "$0")/docker-compose-smoke-test.sh"
