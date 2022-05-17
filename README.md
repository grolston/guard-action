# ShiftLeft


A simple `GitHub Action` for AWS CloudFormation static code analysis to improve infrastructure-as-code security using AWS cfn-guard.

***The Action does not require AWS credentials!***


## Inputs

### `data_directory`

The directory of the repo to scan the cloudformation templates.

### `rule_set`

The AWS Guard rule set used to run security test. Options are `FedRAMP-Low`, `FedRAMP-Moderate`, `NIST800-53Rev4`, `NIST800-53Rev4`, `PCI-DSS-3-2-1`

## Usage

To get started simply add a workflow `.yml` file (name it whatever you would like) to your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions).

## Example

The following example tests CloudFormation with the `FedRAMP-Moderate` rule set:

```yaml
name: ShiftLeft

on: [push]

jobs:
  ## Guard rule set FedRAMP-Moderate
  sast-cfn-lint:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: grolston/ShiftLeft@main
      with:
        data_directory: './cloudformation/' ## change to your template directory
        rule_set: "FedRAMP-Moderate"
```

## License

This project is distributed under the [Apache 2.0](LICENSE.md).
