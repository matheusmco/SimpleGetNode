#!/bin/bash

# install sqlite3
apt-get update
apt-get install sqlite3 -y

# run sqlite3 to create table and insert data
sqlite3 api/base.db <<EOF
create table api_data(key text,data text);
select * from api_data;
insert into api_data(key,data) values ('data', 'hello world');
select * from api_data;
EOF