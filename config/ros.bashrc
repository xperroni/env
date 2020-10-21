# Bash settings and simple extensions for ROS.
#
# (C) 2020 Helio Perroni Filho

# Function for cd'ing into a ROS workspace and automatically sourcing it.
function cd-ros {
  cd $1
  source devel_isolated/setup.bash
}
