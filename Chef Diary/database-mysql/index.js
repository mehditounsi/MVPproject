var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '123',
  database : 'recipe_data'
});

var selectAll = function(callback) {
  connection.query('SELECT * FROM recipes', (err, results)=> {
err ? callback(err,null) : callback(null,results)
})
}

var deleteRecipe=function(params,callback){
connection.query(`Delete FROM recipes where id=?`,params,(err,result)=>{
  err ? calbback(err,null) : callback(null,result)
})
}

var postRecipe= function(params,callback){
connection.query(`INSERT INTO recipes (title,imageUrl,body) values (?)`,[params],(err,result)=>{
  err ? console.log(err) : callback(null,result)
})
}



module.exports.selectAll = selectAll;
module.exports.deleteRecipe = deleteRecipe;
module.exports.postRecipe = postRecipe;
