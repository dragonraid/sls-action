# sls-action

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![version](https://img.shields.io/badge/version-1.3-blue)

Github action for serverless framework

## Inputs

| Input |                         Description |              Example | Required |
| :---- | ----------------------------------: | -------------------: | -------: |
| args  | arguments/options for `sls` command | `--stage dev deploy` |      yes |

## Example usage

```yaml
uses: dragonraid/sls-action@v2.0.0
with:
  args: '--stage prod deploy'
```

## Full example

```yaml
name: deploy lambda functions

on:
  push:
    branches:
      - master

env:
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_DEFAULT_REGION: us-east-1

jobs:
  deploy_serverless:
    name: deploy
    runs-on: ubuntu-18.04
    steps:
      - name: clone local repository
        uses: actions/checkout@v2
      - name: npm install
        run: npm install
      - name: deploy
        uses: dragonraid/sls-action@v2.0.0
        with:
          args: --stage prod deploy
```

## v1 vs v2

The behavior and configuration of `sls-action` does not change, so no action is required by end-users when switching to it.

> NOTE: versioning schema has changed from vX.Y to vX.Y.Z to uphold to semver.
