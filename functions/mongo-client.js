/*eslint-disable*/
"use strict";
// Import the dependency.
const { MongoClient } = require('mongodb');
const mongoose = require('mongoose');
const functions = require('firebase-functions');

//get mongodb uri from secured cloud environment
const db = functions.config().db;

// Create a module-scoped MongoClient promise.
// CRITICAL: You must call connect() outside the handler so that the client
// can be reused across function invocations.
const client = new MongoClient(db.mongouri,
  { useNewUrlParser: true,  useUnifiedTopology: true });

  // MONGOOSE
/*   const client =  mongoose.connect(db.mongouri,{
    useNewUrlParser: true,
    useUnifiedTopology: true
  });;  */

module.exports = client.connect();