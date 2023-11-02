# redoc-cli-github-action

This action lets you use the [redoc-cli](https://github.com/Redocly/redoc/blob/master/cli/README.md) to generate a HTML version of your OpenAPI documents.

## Inputs

### `args`

The arguments to be provided to the `redoc-cli` command.
By default, this is empty so that `redoc-cli` will print a note about its correct usage.

## Outputs

No outputs are returned.
The `redoc-cli` command will automatically save the output into a file called `redoc-static.html`.
It's created in the root folder of the repository's workspace.

## Example usage

See [main.yml](.github/workflows/main.yml) for a "real-life" example and [redoc-cli](https://github.com/Redocly/redoc/blob/master/cli/README.md) for all available options.

```yaml
jobs:
  test_job:
    runs-on: ubuntu-latest
    name: Test
    steps:

      # first checkout your code
      - name: Checkout
        uses: actions/checkout@v4

      # then use redoc-cli-github-action to generate your HTML bundle
      - name: redoc-cli test
        uses: DeltaLaboratory/redoc-cli@v1
        with:
          args: 'bundle test/petstore.yml'
```

The example is using the `bundle` command by providing the OpenAPI document `test/petstore.yml`.
This file must be present within your repository's workspace.

Alternatively, you can point it to a file under a certain URL.

```yaml
- name: redoc-cli test
  uses: DeltaLaboratory/redoc-cli@v1
  with:
    args: 'bundle https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml'
```

If you need to specify a custom name and destination for the output file, use the `-o` option like this:

```yaml
- name: redoc-cli test
  uses: DeltaLaboratory/redoc-cli@v1
  with:
    args: 'bundle test/petstore.yml -o petstore.html'
```
