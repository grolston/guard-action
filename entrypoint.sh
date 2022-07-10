#!/bin/sh

if [ -z "$INPUT_DATA_DIRECTORY" ]; then
  echo "Environment variable DATA_DIRECTORY is not set. Quitting."
  exit 1
fi

if [ ! -d "$INPUT_DATA_DIRECTORY" ]; then
  echo "${INPUT_DATA_DIRECTORY} path not found. Quitting."
  exit 1
fi

case $INPUT_RULE_SET in

  "ABS-CCIGv2-Material")
    echo -n "...scanning with only guard rule set ABS-CCIGv2-Material"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ABS-CCIGv2-Standard")
    echo -n "...scanning with only guard rule set ABS-CCIGv2-Standard"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "acsc-essential-8")
    echo -n "...scanning with only guard rule set acsc-essential-8"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "acsc-ism")
    echo -n "...scanning with only guard rule set acsc-ism"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "apra-cpg-234")
    echo -n "...scanning with only guard rule set apra-cpg-234"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "bnm-rmit")
    echo -n "...scanning with only guard rule set bnm-rmit"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-aws-benchmark-level-1")
    echo -n "...scanning with only guard rule set cis-aws-benchmark-level-1"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-aws-benchmark-level-2")
    echo -n "...scanning with only guard rule set cis-aws-benchmark-level-2"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-critical-security-controls-v8-ig1")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig1"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-critical-security-controls-v8-ig2")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig2"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-critical-security-controls-v8-ig3")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig3"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cis-top-20")
    echo -n "...scanning with only guard rule set cis-top-20"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cisa-ce")
    echo -n "...scanning with only guard rule set cisa-ce"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cmmc-level-1")
    echo -n "...scanning with only guard rule set cmmc-level-1"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cmmc-level-2")
    echo -n "...scanning with only guard rule set cmmc-level-2"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cmmc-level-3")
    echo -n "...scanning with only guard rule set cmmc-level-3"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cmmc-level-4")
    echo -n "...scanning with only guard rule set cmmc-level-4"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "cmmc-level-5")
    echo -n "...scanning with only guard rule set cmmc-level-5"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;
  "enisa-cybersecurity-guide-for-smes")
    echo -n "...scanning with only guard rule set enisa-cybersecurity-guide-for-smes"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ens-high")
    echo -n "...scanning with only guard rule set ens-high"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ens-low")
    echo -n "...scanning with only guard rule set ens-low"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ens-medium")
    echo -n "...scanning with only guard rule set ens-medium"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "FDA-21CFR-Part-11")
    echo -n "...scanning with only guard rule set FDA-21CFR-Part-11"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "FedRAMP-Low")
    echo -n "...scanning with guard rule set FedRAMP-Low"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "FedRAMP-Moderate")
    echo -n "scanning with guard rule set FedRAMP-Moderate"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    ;;

  "ffiec")
    echo -n "scanning with guard rule set ffiec"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "hipaa-security")
    echo -n "scanning with guard rule set hipaa-security"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "K-ISMS")
    echo -n "scanning with guard rule set K-ISMS"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "mas-notice-655")
    echo -n "scanning with guard rule set mas-notice-655"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "mas-trmg")
    echo -n "scanning with guard rule set mas-trmg"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nbc-trmg")
    echo -n "scanning with guard rule set nbc-trmg"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ncsc-cafv3")
    echo -n "scanning with guard rule set ncsc-cafv3"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "ncsc")
    echo -n "scanning with guard rule set ncsc"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nerc")
    echo -n "scanning with guard rule set nerc"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nist-1800-25")
    echo -n "scanning with guard rule set nist-1800-25"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nist-800-171")
    echo -n "scanning with guard rule set nist-800-171"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nist-800-172")
    echo -n "scanning with guard rule set nist-800-172"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nist-800-181")
    echo -n "scanning with guard rule set nist-800-181"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "NIST800-53Rev4")
    echo -n "...scanning with guard rule set NIST800-53Rev4"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "NIST800-53Rev5")
    echo -n "...scanning with guard rule set NIST800-53Rev5"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} -p"
    ;;

  "nist-csf")
    echo -n "scanning with guard rule set nist-csf"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nist-privacy-framework")
    echo -n "scanning with guard rule set nist-privacy-framework"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "nzism")
    echo -n "...scanning with only guard rule set nzism"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "PCI-DSS-3-2-1")
    echo -n "...scanning with only guard rule set PCI-DSS-3-2-1"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "rbi-bcsf-ucb")
    echo -n "scanning with guard rule set rbi-bcsf-ucb"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "rbi-md-itf")
    echo -n "scanning with guard rule set rbi-md-itf"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;
  "us-nydfs")
    echo -n "scanning with guard rule set us-nydfs"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "wa-Reliability-Pillar")
    echo -n "scanning with guard rule set wa-Reliability-Pillar"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  "wa-Security-Pillar")
    echo -n "scanning with guard rule set wa-Security-Pillar"
    echo "Running: cfn-guard validate --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${INPUT_SHOW_SUMMARY} --output-format ${INPUT_OUTPUT_FORMAT}"
    ;;

  *)
    echo -n "Environment variable RULE_SET is not set to an allowed option...Quitting."
    exit 1
    ;;
esac