var express = require('express');
var app = express();
var db = require('../queries');
var path = require('path')
// node/common.js style 
var logger = require('logger').createLogger(); // logs to STDOUT


app.use(express.static(__dirname + '/public'));

app.get('/api/getAllMods', db.getAllMods);
app.get('/api/getSingleMod/:id', db.getSingleMod);
app.post('/api/createMod', db.createMod);
app.put('/api/updateMod/:id', db.updateMod);
app.delete('/api/removeMod/:id', db.removeMod);

app.listen(3000);

module.exports = app;
