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
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "ABS-CCIGv2-Standard")
    echo -n "...scanning with only guard rule set ABS-CCIGv2-Standard"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "acsc-essential-8")
    echo -n "...scanning with only guard rule set acsc-essential-8"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "acsc-ism")
    echo -n "...scanning with only guard rule set acsc-ism"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "apra-cpg-234")
    echo -n "...scanning with only guard rule set apra-cpg-234"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "bnm-rmit")
    echo -n "...scanning with only guard rule set bnm-rmit"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-aws-benchmark-level-1")
    echo -n "...scanning with only guard rule set cis-aws-benchmark-level-1"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-aws-benchmark-level-2")
    echo -n "...scanning with only guard rule set cis-aws-benchmark-level-2"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-critical-security-controls-v8-ig1")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig1"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-critical-security-controls-v8-ig2")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig2"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-critical-security-controls-v8-ig3")
    echo -n "...scanning with only guard rule set cis-critical-security-controls-v8-ig3"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cis-top-20")
    echo -n "...scanning with only guard rule set cis-top-20"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cisa-ce")
    echo -n "...scanning with only guard rule set cisa-ce"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cmmc-level-1")
    echo -n "...scanning with only guard rule set cmmc-level-1"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cmmc-level-2")
    echo -n "...scanning with only guard rule set cmmc-level-2"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "cmmc-level-3")
    echo -n "...scanning with only guard rule set cmmc-level-3"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;
  "cmmc-level-4")
    echo -n "...scanning with only guard rule set cmmc-level-4"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;
  "cmmc-level-5")
    echo -n "...scanning with only guard rule set cmmc-level-5"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;
  "enisa-cybersecurity-guide-for-smes")
    echo -n "...scanning with only guard rule set enisa-cybersecurity-guide-for-smes"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "ens-high")
    echo -n "...scanning with only guard rule set ens-high"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "ens-low")
    echo -n "...scanning with only guard rule set ens-low"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "ens-medium")
    echo -n "...scanning with only guard rule set ens-medium"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "FDA-21CFR-Part-11")
    echo -n "...scanning with only guard rule set FDA-21CFR-Part-11"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "FedRAMP-Low")
    echo -n "...scanning with guard rule set FedRAMP-Low"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "FedRAMP-Moderate")
    echo -n "scanning with guard rule set FedRAMP-Moderate"
    echo "Running: cfn-guard validate --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard"
    sh -c "cfn-guard validate --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT} --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard; echo 'scan complete'"
    echo -n "cfn-guard scan complete for ${INPUT_RULE_SET}"
    ;;

  "ffiec")
    echo -n "scanning with guard rule set ffiec"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "hipaa-security")
    echo -n "scanning with guard rule set hipaa-security"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "K-ISMS")
    echo -n "scanning with guard rule set K-ISMS"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "mas-notice-655")
    echo -n "scanning with guard rule set mas-notice-655"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "mas-trmg")
    echo -n "scanning with guard rule set mas-trmg"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nbc-trmg")
    echo -n "scanning with guard rule set nbc-trmg"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "ncsc-cafv3")
    echo -n "scanning with guard rule set ncsc-cafv3"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "ncsc")
    echo -n "scanning with guard rule set ncsc"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nerc")
    echo -n "scanning with guard rule set nerc"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-1800-25")
    echo -n "scanning with guard rule set nist-1800-25"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-800-171")
    echo -n "scanning with guard rule set nist-800-171"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-800-172")
    echo -n "scanning with guard rule set nist-800-172"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-800-181")
    echo -n "scanning with guard rule set nist-800-181"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "NIST800-53Rev4")
    echo -n "...scanning with guard rule set NIST800-53Rev4"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "NIST800-53Rev5")
    echo -n "...scanning with guard rule set NIST800-53Rev5"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-csf")
    echo -n "scanning with guard rule set nist-csf"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nist-privacy-framework")
    echo -n "scanning with guard rule set nist-privacy-framework"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "nzism")
    echo -n "...scanning with only guard rule set nzism"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "PCI-DSS-3-2-1")
    echo -n "...scanning with only guard rule set PCI-DSS-3-2-1"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "rbi-bcsf-ucb")
    echo -n "scanning with guard rule set rbi-bcsf-ucb"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "rbi-md-itf")
    echo -n "scanning with guard rule set rbi-md-itf"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;
  "us-nydfs")
    echo -n "scanning with guard rule set us-nydfs"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "wa-Reliability-Pillar")
    echo -n "scanning with guard rule set wa-Reliability-Pillar"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  "wa-Security-Pillar")
    echo -n "scanning with guard rule set wa-Security-Pillar"
    sh -c "cfn-guard validate --data ${INPUT_DATA_DIRECTORY} --rules /${INPUT_RULE_SET}.guard --show-summary ${SHOW_SUMMARY} --output-format ${OUTPUT_FORMAT}"
    ;;

  *)
    echo -n "Environment variable RULE_SET is not set to an allowed option...Quitting."
    exit 1
    ;;
esac