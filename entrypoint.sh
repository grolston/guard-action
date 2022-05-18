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

  "FedRAMP-Moderate")
    echo -n "scanning with guard rule set RedRAMP-Moderate"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary"
    ;;

  "FedRAMP-Low")
    echo -n "...scanning with guard rule set FedRAMP-Low"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary"
    ;;

  "NIST800-53Rev4")
    echo -n "...scanning with guard rule set NIST800-53Rev4"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary"
    ;;

  "NIST800-53Rev5")
    echo -n "...scanning with guard rule set NIST800-53Rev5"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary"
    ;;

  "PCI-DSS-3-2-1")
    echo -n "...scanning with only guard rule set PCI-DSS-3-2-1"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary"
    ;;

  *)
    echo -n "Environment variable RULE_SET is not set to an allowed option...Quitting."
    exit 1
    ;;
esac