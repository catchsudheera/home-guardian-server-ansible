#!/bin/bash

echo " - Prepare for installation"
if ./stop-all.sh  ; then
    echo ""
else
    exit 1
fi


echo ""
echo "--------------------------------------------------------------"
echo " - Start installation"
ansible-playbook site.yml -i inventories/default/hosts.ini

