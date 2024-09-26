#!/bin/bash

set -e

SOURCE_FILE=rosdep/base.yaml
SORTED_FILE=/tmp/base.sorted

# Check if yq is installed, if not, install it using .devcontainer/postCreateCommand.bash
if ! command -v yq &> /dev/null; then
  echo "yq is not installed. Running .devcontainer/postCreateCommand.bash to install it."
  .devcontainer/postCreateCommand.bash
fi

# Generate the sorted version without modifying the original
yq eval 'sort_keys(..)' ${SOURCE_FILE} -o=yaml > ${SORTED_FILE}

# Check if running in CI or development
if [ "$CI" == "true" ]; then
  # CI mode: Check if the sorted file differs from the original
  if ! cmp -s ${SOURCE_FILE} ${SORTED_FILE}; then
    echo "Error: The YAML file is not sorted. Please sort it with './format.bash' before committing."
    rm ${SORTED_FILE}
    exit 1
  else
    # Clean up if files are already sorted
    rm ${SORTED_FILE}
  fi
else
  # Development mode: Sort and replace the original file
  mv ${SORTED_FILE} ${SOURCE_FILE}
fi
