#!/bin/sh

 echo "Подготовка..."
 cd ./EIMS/eims-Elina
 tar cfz eims.tar.gz ./*
 mv eims.tar.gz ..
 cd ../..
 ansible-playbook eims-update.yml
 rm ./EIMS/eims.tar.gz