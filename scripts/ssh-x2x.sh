#!/bin/bash

function print_help() {
  echo 'ssh-x2x <host> [--display=[host]:<id>] [--side=<east|west|north|south>]'
}

if [[ $1 == '--help' ]]
then
  print_help
  exit 0
fi

# See: https://stackoverflow.com/a/14203146/476920
POSITIONAL=()
while [[ $# -gt 0 ]]
do
  # See: https://stackoverflow.com/a/2172367/476920
  if [[ $1 == --* ]]
  then
    break
  fi

  POSITIONAL+=("$1")
  shift
done

# See: https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays
if [[ ${#POSITIONAL[@]} -lt 1 ]]
then
  echo 'Error: host name not entered'
  print_help
  exit 1
fi

# Positional arguments.
SERVER=${POSITIONAL[0]}

# Optional arguments.
SIDE='west'

# See: https://stackoverflow.com/a/14203146/476920
for i in "$@"
do
  case $i in
    --side=*)
      SIDE="${i#*=}"
    ;;
    --display=*)
      DISPLAY="${i#*=}"
    ;;
    *)
      echo "Unkwnown option: \""$i'"'
      exit
    ;;
  esac
done

# If the command keeps failing with error message "can not open display", try
# adding the client machine to the server's list of allowed X clients with:
#
#    xhost <machine name>

ssh $SERVER x2x -$SIDE -to $DISPLAY
