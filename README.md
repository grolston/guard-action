# Guard-Action

A simple `GitHub Action` for AWS CloudFormation static code analysis to improve infrastructure-as-code security using AWS cfn-guard.

***The Action does not require AWS credentials!***

It gets better:
**Guard Rules in this github action can be suppressed at the resource-level!** See [Guard Rule Suppression](#guard-rule-suppression) to learn how to leverage in your code.

## Inputs

### `data_directory`

The directory of the repo to scan the cloudformation templates.

### `rule_set`

The AWS Guard rule set used to run security test. Options are:

1. ABS-CCIGv2-Material
2. ABS-CCIGv2-Standard
3. acsc-essential-8
4. acsc-ism
5. apra-cpg-234
6. bnm-rmit
7. cis-aws-benchmark-level-1
8. cis-aws-benchmark-level-2
9. cis-critical-security-controls-v8-ig1
10. cis-critical-security-controls-v8-ig2
11. cis-critical-security-controls-v8-ig3
12. cis-top-20
13. cisa-ce
14. cmmc-level-1
15. cmmc-level-2
16. cmmc-level-3
17. cmmc-level-4
18. cmmc-level-5
19. enisa-cybersecurity-guide-for-smes
20. ens-high
21. ens-low
22. ens-medium
23. FDA-21CFR-Part-11
24. FedRAMP-Low
25. FedRAMP-Moderate
26. ffiec
27. hipaa-security
28. K-ISMS
29. mas-notice-655
30. mas-trmg
31. nbc-trmg
32. ncsc-cafv3
33. ncsc
34. nerc
35. nist-1800-25
36. nist-800-171
37. nist-800-172
38. nist-800-181
39. NIST800-53Rev4
40. NIST800-53Rev5
41. nist-csf
42. nist-privacy-framework
43. nzism
44. PCI-DSS-3-2-1
45. rbi-bcsf-ucb
46. rbi-md-itf
47. us-nydfs
48. wa-Reliability-Pillar
49. wa-Security-Pillar

## Usage

To get started simply add a workflow `.yml` file (name it whatever you would like) to your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions).

## Example

The following example tests CloudFormation with the `FedRAMP-Moderate` rule set:

```yaml
name: ShiftLeft

on: [push]

jobs:
  ## Guard rule set FedRAMP-Moderate
  sast-shift:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: grolston/guard-action@main
      with:
        data_directory: './cloudformation/' ## change to your template directory
        rule_set: "FedRAMP-Moderate"
```

## Guard Rule Suppression

The rules build in `guard-action` support resource-level rule suppression. Suppressed Rules are marked as SKIP in the validation process. To suppress a rule add in to the resource metadata the following `Metadata`:

**YAML:**
Suppressing rule `EC2_INSTANCE_PROFILE_ATTACHED`
```yaml
Resources:
  ExampleEC2:
    Type: AWS::EC2::Instance
    Metadata:
      guard:
        SuppressedRules:
        - EC2_INSTANCE_PROFILE_ATTACHED
```

**JSON:**
Suppressing rule `ELASTICSEARCH_ENCRYPTED_AT_REST`
```json
"Resources": {
  "ElasticsearchDomain": {
    "Type": "AWS::Elasticsearch::Domain",
    "Metadata": {
      "guard": {
        "SuppressedRules": ["ELASTICSEARCH_ENCRYPTED_AT_REST"]
      }
    },
    "Properties": {
      "DomainName": "test"
    }
  }
}
```

## License

This project is distributed under the [Apache 2.0](LICENSE.md).
