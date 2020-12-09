#!/usr/bin/env bash
# expression arguments must be separated by spaces
. func-file

#set -x

ARGS=3                            # Three command-line parameters expected.
dilene=$1 
diya=$2
dilnyk=$3
E_NO_ARGS=64
E_PARAM_ERR=128


if [ $# -ne "$ARGS" ]             # Require three command-line params.
then
  Param_Error
fi  
#echo $?; exit 0

if [[ "$dilene" =~ "^[0-9]+$" && "$dilnyk" =~ "^[0-9]+$" ]]
then
  Param_Error
else
  
case $diya in
"+") Addition ;;
"-") Subtraction ;;
"/") Division ;;
"*") Multiplication;;
*) Param_Error ;;
  esac

  echo "$result"
fi

exit $?
