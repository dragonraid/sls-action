# Serverless Action [![LICENSE](https://img.shields.io/badge/License-Apache--2.0-green.svg?style=flat-square)](LICENSE) [![LICENSE](https://img.shields.io/badge/License-Anti%20996-blue.svg?style=flat-square)](https://github.com/996icu/996.ICU/blob/master/LICENSE) [![996.icu](https://img.shields.io/badge/Link-996.icu-red.svg?style=flat-square)](https://996.icu)

Github action for serverless framework

## Inputs

| Input |                         Description |              Example | Required |
| :---- | ----------------------------------: | -------------------: | -------: |
| args  | arguments/options for `sls` command | `--stage dev deploy` |      yes |

## Usage

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
    runs-on: ubuntu-latest
    steps:
      - name: clone local repository
        uses: actions/checkout@v2
      - name: npm install
        run: npm install
      - name: deploy
        uses: Teakowa/serverless-action@v1.73.1
        with:
          args: --stage prod deploy
```
