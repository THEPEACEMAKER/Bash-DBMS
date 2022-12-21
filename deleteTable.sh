#!/bin/bash

read -rp "Enter Table Name: " TableName;

if [ -f  "$currDB/$TableName.idb" ] && [ -f  "$currDB/.$TableName.frm" ]; then
    rm -r $currDB/$TableName.idb
    rm -r $currDB/.$TableName.frm
    echo "$TableName Table  deleted Successfully"
  else
    echo "No such Table"
fi
