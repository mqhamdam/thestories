/* eslint-disable */
const functions = require("firebase-functions");
const express = require('express');
const cors = require('cors');
//const morgan = require('morgan');
// The Firebase Admin SDK to access Firestore.
const admin = require('firebase-admin');

// init connection to project
admin.initializeApp();
const app = express();

app.use(cors({ origin: true }));



    // root function 
exports.api = functions.https.onRequest((req,res)=>res.send("sss"));