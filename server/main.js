const crypto = require('node:crypto');
const path = require('node:path');
const express = require('express');
const mongo = require('mongodb');



const mongo_uri = 'mongodb://localhost:27017/';
const mongo_client = new mongo.MongoClient(mongo_uri);
const mongo_database = mongo_client.db('GDSC');


const app = express();
app.use(express.json());


async function userExists(username) {
    const collection = mongo_database.collection('users');
    const user = collection.findOne({
        username: username
    });
    return user;
}


app.post('/auth/signup', (req, res) => {
    if(!req.body.username) {
        res.send({
            success: false,
            reason: 'No username provided'
        });
    } else if (!req.body.password) {
        res.send({
            success: false,
            reason: 'No password provided'
        })
    } else {
        // Valid request
        let username = req.body.username;
        let password = req.body.password;
        
        //check if user already exists.
        userExists(username).then(userExist => {
            if(userExist != null) {
                res.send({
                    success: false,
                    reason: 'User already exists'
                });
            } else {
                const user = mongo_database.collection('users');
                const salt = crypto.randomBytes(16).toString('hex');
                const password_hash = crypto.scryptSync(password, salt, 64).toString('hex');
                user.insertOne({
                    username: username,
                    password_hash: password_hash,
                    salt: salt
                });
                res.send({
                    success: true
                })
            }
        });
    }
});


app.use(express.static(path.join(__dirname, '../client')));

app.listen(8080, console.log('Listening on port 8080'));
