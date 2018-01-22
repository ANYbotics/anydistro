# anydistro

## Overview

All official non-catkin dependencies are listed in the [rosdistro repository](https://github.com/ros/rosdistro/blob/master/rosdep/base.yaml).
The anydistro repository contains additional [rosdep](http://wiki.ros.org/rosdep) rules for unofficial dependencies.
More information can be found [here](http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html).

## Installation

Cloning this repo is not necessary, unless you want to modify it.

To use these rules, run the following command in your console:

    sudo bash -c 'echo "yaml https://bitbucket.org/leggedrobotics/anydistro/raw/master/rosdep/base.yaml" > /etc/ros/rosdep/sources.list.d/10-any.list'
    rosdep update
