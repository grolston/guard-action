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

| Example Managed Rule Set                         | `rule_set` parameter |
| -------------------------------- | -------- |
| ABS Cloud Computing Implementation Guide 2.0 - Material Workloads | ABS-CCIGv2-Material |
| ABS Cloud Computing Implementation Guide 2.0 - Standard Workloads | ABS-CCIGv2-Standard |
| Australian Cyber Security Centre (ACSC) Essential Eight Maturity Model | acsc-essential-8 | [
| Australian Cyber Security Centre (ACSC) Information Security Manual (ISM) 2020-06 | acsc-ism |
| Australian Prudential Regulation Authority (APRA) CPG 234 | apra-cpg-234 |
| Bank Negara Malaysia (BNM) Risk Management in Technology (RMiT) | bnm-rmit |
| Center for Internet Security (CIS) Amazon Web Services Foundation v1.4 Level 1 | cis-aws-benchmark-level-1 |
| Center for Internet Security (CIS) Amazon Web Services Foundation v1.4 Level2 | cis-aws-benchmark-level-2 |
| Center for Internet Security (CIS) Critical Security Controls v8 IG1 | cis-critical-security-controls-v8-ig1 |
| Center for Internet Security (CIS) Critical Security Controls v8 IG2 | cis-critical-security-controls-v8-ig2 |
| Center for Internet Security (CIS) Critical Security Controls v8 IG3 | cis-critical-security-controls-v8-ig3 |
| Center for Internet Security (CIS) Top 20 Critical Security Controls | cis-top-20 |
| Cybersecurity & Infrastructure Security Agency (CISA) Cyber Essentials (CE) | cisa-ce |
| Cybersecurity Maturity Model Certification (CMMC) Level 1 | cmmc-level-1 |
| Cybersecurity Maturity Model Certification (CMMC) Level 2 | cmmc-level-2 |
| Cybersecurity Maturity Model Certification (CMMC) Level 3 | cmmc-level-3 |
| Cybersecurity Maturity Model Certification (CMMC) Level 4 | cmmc-level-4 |
| Cybersecurity Maturity Model Certification (CMMC) Level 5 | cmmc-level-5 |
| European Union Agency for Cybersecurity (ENISA) Cybersecurity guide for SMEs  | enisa-cybersecurity-guide-for-smes |
| Spain Esquema Nacional de Seguridad (ENS) High framework controls | ens-high
| Spain Esquema Nacional de Seguridad (ENS) Low framework controls | ens-low |
| Spain Esquema Nacional de Seguridad (ENS) Medium framework controls | ens-medium |
| Title 21 of the Code of Federal Regulations (CFR) Part 11 | FDA-21CFR-Part-11 |
| Federal Risk and Authorization Management Program (FedRAMP) Moderate | fedramp-moderate |
| Federal Risk and Authorization Management Program (FedRAMP) Low | fedramp-low
| Federal Financial Institutions Examination Council (FFIEC) Cyber Security Assessment Tool domains | ffiec |
| Health Insurance Portability and Accountability Act (HIPAA) | hipaa-security |
| Korea – Information Security Management System (ISMS) | k-isms |
| Monetary Authority of Singapore (MAS) Notice 655 – Cyber Hygiene | mas-notice-655 |
| Monetary Authority of Singapore (MAS) Technology Risk Management Guidelines (TRMG) January 2021 | mas-trmg |
| National Bank of Cambodia’s (NBC) Technology Risk Management (TRM) Guidelines framework | nbc-trmg |
| UK National Cyber Security Centre (NCSC) Cyber Assessment Framework (CAF) controls | ncsc-cafv3 |
| K National Cyber Security Centre (NCSC) Cloud Security Principles | ncsc |
| North American Electric Reliability Corporation Critical Infrastructure Protection Standards (NERC CIP) for BES Cyber System Information (BCSI), CIP-004-7 & CIP-011-3  | nerc |
| NIST 1800-25 | nist-1800-25 |
| NIST 800-171 | nist-800-171 |
| NIST 800-172 | nist-800-172 |
| NIST 800-181 | nist-800-181 |
| NIST 800-53 Revision 4 | NIST800-53Rev4 |
| NIST 800-53 Revision 5| NIST800-53Rev5 |
| NIST Cyber Security Framework (CSF)  | nist-csf |
| NIST Privacy Framework | nist-privacy-framework |
| New Zealand Government Communications Security Bureau (GCSB) Information Security Manual (NZISM) | nzism |
| Payment Card Industry Data Security Standard (PCI DSS) 3.2.1 | PCI-DSS-3-2-1 |
| Reserve Bank of India (RBI) Cyber Security Framework for Urban Cooperative Banks (UCBs) | rbi-bcsf-ucb |
| Reserve Bank of India (RBI) Master Direction – Information Technology Framework | rbi-md-itf |
| New York State Department Of Financial Services (NYDFS) cybersecurity requirements for financial services companies (23 NYCRR 500) | us-nydfs |
| Amazon Web Services' Well-Architected Framework Reliability Pillar | wa-Reliability-Pillar |
| AWS Guard rule set for Amazon Web Services' Well-Architected Framework Security Pillar | wa-Security-Pillar |

## Usage

To get started simply add a workflow `.yml` file (name it whatever you would like) to your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions).

## Example

The following example tests CloudFormation with the `FedRAMP-Moderate` example rule set:

```yaml
name: sast

on: [push]

jobs:
  ## Guard rule set FedRAMP-Moderate
  sast-guard:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: grolston/guard-action@main
      with:
        data_directory: './cloudformation/' ## change to your template directory
        rule_set: "FedRAMP-Moderate"
```

The following example tests CloudFormation with the `cis-aws-benchmark-level-1` example rule set:

```yaml
name: sast

on: [push]

jobs:
  ## Guard rule set FedRAMP-Moderate
  sast-guard:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: grolston/guard-action@main
      with:
        data_directory: './cloudformation/' ## change to your template directory
        rule_set: "cis-aws-benchmark-level-1"
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
