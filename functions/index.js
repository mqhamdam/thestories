/* eslint-disable */

const admin = require('firebase-admin');
// ! APIS
const users = require('./src/api/users_api');
const stories = require('./src/api/stories_api');

// -------------

// ! triggers
const onUserCreated = require('./src/triggers/auth/onUserCreated');
const onUserDeleted = require('./src/triggers/auth/onUserDeleted');


// init connection to project
admin.initializeApp();

//  export functions 

exports.users= users.users;
exports.onUserCreated = onUserCreated.onUserCreated;
exports.onUserDeleted = onUserDeleted.onUserDeleted;