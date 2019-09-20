#!/bin/bash
  7 CURRENTDIR=$PWD
  6 echo $CURRENTDIR
  5 PROJECTPATH=`find "$CURRENTDIR" -type d -name "*-readyapi-project"`
  4 ls "$PROJECTPATH"
  3 BASENAME=$(basename $PROJECTPATH)
  2 echo $BASENAME
  1
9   cd "$PROJECTPATH" && zip -r $CURRENTDIR/${BASENAME}.zip ./* && cd -
