'use strict';

const sqlite3 = require('sqlite3').verbose();

exports.get = function (req, res) {
    let db = new sqlite3.Database('/home/matheus/repos/SimpleGetNode/api/base.db');

    let return_data = {}

    db.all('SELECT * FROM api_data', [], (err, rows) => {
        rows.forEach((row) => {
            return_data[row.key] = row.data
            res.json(return_data);
        });
    });

    db.close();
};