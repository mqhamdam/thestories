/*eslint-disable*/
const functions = require('firebase-functions');
const express = require("express");
const mongoClient = require('../../mongo-client');

const cors = require('cors');
const app = express();

app.use(cors({ origin: true }));

const getUsers = async (req, res) => {
    
    const client = await mongoClient;
    res.send("message");
};

const createUser = async ( req,   res) => {
    const client = await mongoClient;
    
    
} 

app.route('/')
//! get Method
.get(async(req,res)=>{
    try {
        const client = await mongoClient;
        const doc =await client.db("theStories").collection("users").find({}).toArray();
        res.status(200).json({"status": "ok","docData": doc});
    } catch (error) {
        res.status(400).json({"error": "unathorized"})
    }
})   
// ! post METHOD 
.post(async(req,res)=>{
    try {
        
        const User = {
            "name": req.body.name,
            "username" : req.body.username,
            "userAvatar": req.body.userAvatar,
            "userBgImage": req.body.userBgImage,
            "bio" : req.body.bio,
            "userAuthID": req.body.authID
        }
        const client = await mongoClient;
        const doc = await client.db("theStories").collection("users").insertOne(User);
        res.status(200).json({"status": "ok","docData": doc});
    } catch (error) {
        res.status(500).json({"error":"internal error see logs"});
    }
});
app.route('/:userid')
.get(async(req,res)=>{
      try {
        const client = await mongoClient;
        const doc = await client.db("theStories").collection("users").findOne({"userAuthID": req.params.userid});
        console.log(doc);
        res.status(200).json({"status" : "ok","docData": doc});
    } catch (error) {
        res.json({"error" : "internal error"});
    }
});

// api call /users
exports.users = functions.https.onRequest(app);