var express = require('express');
var app = express();
var db = require('../queries');
var path = require('path')
// node/common.js style 

app.use(express.static(__dirname + '/public'));

//Singular Mods get and request methods
app.get('/api/getAllMods', db.getAllMods);
app.get('/api/getSingleMod/:id', db.getSingleMod);
app.post('/api/createMod', db.createMod);
app.put('/api/updateMod/:id', db.updateMod);
app.delete('/api/removeMod/:id', db.removeMod);

//Modpacks get and request methods TODO Complete
app.get('/api/getAllModpacks', db.getAllModpacks)

//app.listen(8000);

module.exports = app;
