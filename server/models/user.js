var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var userSchema = new Schema({
    id: String,
    pwd: String,    
});

module.exports = mongoose.model('User', userSchema);