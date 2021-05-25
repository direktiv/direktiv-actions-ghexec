# direktiv-actions

This action executes workflow on direktiv automation servers.

## Usage

See [action.yaml](action.yaml)

### Basic

```yaml
steps:
  - name: execute
    id: execute
    with:
      server: playground.direktiv.io
      workflow: mynamespace/myworkflow
    uses: vorteil/direktiv-actions-ghexec@v1
```

### Waiting for workflow result

```yaml
steps:
  - name: execute
    id: execute
    with:
      wait: false
      server: playground.direktiv.io
      workflow: mynamespace/myworkflow
    uses: vorteil/direktiv-actions-ghexec@v1
```

### Posting data to workflow

```yaml
steps:
  - name: execute
    id: execute
    with:
      wait: false
      server: playground.direktiv.io
      workflow: mynamespace/myworkflow
      data: |
        {
          "data": "mydata"
        }
    uses: vorteil/direktiv-actions-ghexec@v1
```

### Using authentication token

```yaml
steps:
  - name: execute
    id: execute
    with:
      wait: false
      server: playground.direktiv.io
      workflow: mynamespace/myworkflow
      token: ${{ secrets.DIREKTIV_TOKEN }}
    uses: vorteil/direktiv-actions-ghexec@v1
```
