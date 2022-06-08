#!/bin/sh

set -e

htmlproofer -v

echo "Running htmlproofer with arguments ${INPUT_ARGUMENTS}"
echo "Export the result into a file ${INPUT_OUTPUT_FILE}"
echo ${INPUT_ARGUMENTS} | xargs htmlproofer "${INPUT_DIRECTORY}" >> ${INPUT_OUTPUT_FILE}
