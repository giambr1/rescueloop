#! /bin/bash
touch ehi.txt ehl.txt && rm ehi.txt ehl.txt # just to be sure that these files are not there
ansible-playbook setup.yml </dev/null &>/dev/null &
sleep 3 && touch ehi.txt
