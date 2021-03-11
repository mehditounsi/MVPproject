var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '123',
  database : 'test'
});

var selectAll = function(callback) {
  connection.query('SELECT * FROM items', (err, results)=> {
err ? callback(err,null) : callback(null,results)
})
}

var incrementLikes=function(params,callback){
connection.query(`UPDATE recipes SET likes=? where id=?`,[params],(err,result)=>{
  err ? callback(err,null) : callback(null,result)
})
}

var deleteRecipe=function(params,callback){
connection.query(`Delete FROM recipes where id=?`,params,(err,result)=>{
  err ? calbback(err,null) : callback(null,result)
})
}

var postRecipe= function(params,callback){
connection.query(`INSERT INTO recipes (title,imageUrl,body,likes) values (?,?,?,0)`,[params],(err,result)=>{
  err ? callback(err,null) : callback(null,result)
})
}



module.exports.selectAll = selectAll;
module.exports.incrementLikes = incrementLikes;
module.exports.deleteRecipe = deleteRecipe;
module.exports.postRecipe = postRecipe;
