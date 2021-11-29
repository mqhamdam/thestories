/*eslint-disable*/

const functions = require('firebase-functions');
const mongoClient = require('../../../mongo-client');



module.exports.onUserCreated = functions.auth.user().onCreate(async(user) =>{
    const client = await mongoClient;
    client.db().collection("users").insertOne({
        "name": "name",
        "username" : "uniqename",
        "userAvatar": "avatarURL",
        "userBgImage": "userbgImage",
        "bio" : "bio",
        "userAuthID": user.uid,
    });
});