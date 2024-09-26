
# anydistro

## Overview

All official non-catkin dependencies are listed in the [rosdistro repository](https://github.com/ros/rosdistro/blob/master/rosdep/base.yaml).
The anydistro repository contains additional [rosdep](http://wiki.ros.org/rosdep) rules for unofficial dependencies.
More information can be found [here](http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html).

The source code is released under a [BSD 3-Clause license](LICENSE).

## Installation

Cloning this repo is not necessary, unless you want to modify it.

To use these rules, run the following command in your console:

```bash
sudo bash -c 'echo "yaml https://raw.githubusercontent.com/ANYbotics/anydistro/master/rosdep/base.yaml" > /etc/ros/rosdep/sources.list.d/10-any.list'
rosdep update
```

## Development Environment

This project uses a VSCode devcontainer based on `mcr.microsoft.com/devcontainers/base:noble` to ensure a consistent development environment. The devcontainer automatically sets up the necessary dependencies, including `yq` for formatting YAML files.

To use the devcontainer, open this repository in VSCode and ensure you have the Dev Containers extension installed. VSCode will prompt you to reopen the project in the devcontainer, which will provide the appropriate environment.

## Formatting

YAML files in this repository must be sorted alphabetically. To enforce this, a `format.bash` script is provided, which uses `yq` to sort YAML keys.

### Running the Formatter

To format the YAML files, run the following command:

```bash
./format.bash
```

This script will automatically install `yq` if it is not found and sort the keys in `rosdep/base.yaml`. You should run this command before committing changes to ensure consistency.

### Enforcing Formatting in CI

Formatting checks are enforced in CI using GitHub Actions. The CI workflow runs the `format.bash` script to ensure that the YAML file is properly sorted. If the file is not sorted, the CI will fail, prompting you to run the formatter locally.

## Continuous Integration (CI)

The CI pipeline uses GitHub Actions with the same container image as the VSCode devcontainer (`mcr.microsoft.com/devcontainers/base:noble`). This ensures that the CI environment matches your local development setup, reducing discrepancies.

### CI Workflow

The CI workflow is triggered on pushes and pull requests to the `main` branch. It performs the following steps:

1. **Checkout the Repository**: Uses the latest codebase for validation.
2. **Run Format Script**: Executes `./format.bash` to ensure the YAML files are sorted correctly.

If the formatting check fails, CI will prompt you to run the formatter locally before committing your changes.

