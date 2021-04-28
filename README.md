# action-cleanup-runner

This GitHub action automatically cleans up the self-hosted runner after every workflow execution. It installs a post-cleanup hook, so it should be called as the beginning of every job.

Example workflow config:
```yaml
name: CI
on:
  push:
    branches:
      - '**'

jobs:
  test:
    runs-on: self-hosted
    steps:
      - uses: enowars/action-cleanup-runner@v1
      - uses: actions/checkout@v2
      - run: docker run -d --name redis-server -p 6379:6379 redis
      - run: make test
      - run: make build
```
