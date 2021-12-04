/*eslint-disable*/
const functions = require('firebase-functions');
const express = require("express");
const mongoClient = require('../../mongo-client');

const cors = require('cors');
const app = express();

app.route('/').get(async(req,res)=>{
    try {
      
    } catch (error) {
        
    }
})

exports = functions.https.onRequest(app);
