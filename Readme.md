# anydistro

This repository contains additional [rosdep](http://wiki.ros.org/rosdep) rules for unofficial dependencies.
More information can be found [here](http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html).

To use these rules, run the following command:

    sudo bash -c 'echo "yaml https://bitbucket.org/leggedrobotics/anydistro/raw/master/rosdep/base.yaml" > /etc/ros/rosdep/sources.list.d/10-any.list'
