#!/bin/bash

#. ./config/db/env
MYSQL_ROOT_PASSWORD=root123
MYSQL_DATABASE=wift_iiws_tst
MYSQL_USER=wift_iiws_tst
MYSQL_PASSWORD=Wift_iiws_tst_15

ls db/*.sql |while read i
do
  mysql -h127.0.0.1 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}< $i
done
