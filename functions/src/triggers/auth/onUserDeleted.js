/*eslint-disable*/

const functions = require('firebase-functions');
const mongoClient = require('../../../mongo-client');



module.exports.onUserDeleted = functions.auth.user().onDelete(async(user) =>{
    try {
        
        const client = await mongoClient;
        client.db().collection("users").deleteOne({"userAuthID" : user.uid});
    } catch (error) {
        console.log({"type":"URGENT","error" : error })
    }
});