
# anydistro

## Overview

All official non-catkin dependencies are listed in the [rosdistro repository](https://github.com/ros/rosdistro/blob/master/rosdep/base.yaml).
The anydistro repository contains additional [rosdep](http://wiki.ros.org/rosdep) rules for unofficial dependencies.
More information can be found [here](http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html).

NOTE: Publicly available at [Github](https://github.com/ANYbotics/anydistro), 
    but maintained by ANYbotics internal repository. 

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

Formatting checks are enforced in CI. The CI workflow runs the `format.bash` script to ensure that the YAML file is properly sorted. If the file is not sorted, the CI will fail, prompting you to run the formatter locally.

