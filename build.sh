# install node
curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs

# install npm packages
#npm install sqlite3
#npm install express --save
npm install

# install sqlite3
sudo apt install sqlite3 -y

# run sqlite3 to create table and insert data
sqlite3 api/base.db <<EOF
create table api_data(key text,data text);
select * from api_data;
insert into api_data(key,data) values ('data', 'hello world');
select * from api_data;
EOF

# run npm run start
npm run start