#!/bin/bash

count=`ls -1 epub/*.epub 2>/dev/null | wc -l`
if [ $count != 0 ]
then
echo true
else
echo false
fi
