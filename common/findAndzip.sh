#!/bin/bash
WorkingDirectory=$PWD
PROJECTPATH=`find "$WorkingDirectory" -type d -name "*-readyapi-project"`
PROJECTNAME=$(basename $PROJECTPATH)
cd "$PROJECTPATH" && zip -r $WorkingDirectory/${PROJECTNAME}.zip ./* && cd -
