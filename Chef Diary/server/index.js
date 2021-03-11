var express = require('express');
var bodyParser = require('body-parser');
var db = require('../database-mysql');


var app = express();

app.use(express.json())
app.use(express.static(__dirname + '/../react-client/dist'));


app.get('/recipes', function (req, res) {
  db.selectAll(function(err,data) {
    if(err) {
      res.sendStatus(500);
    } else {
      res.json(data);
    }
  });
});

app.post('/recipes',function(req,res){
  db.postRecipe([req.body.title,req.body.imageUrl,req.body.body,req.body.views],(err,data)=>{
    err ? res.sendStatus(400) : res.json(data)
  })
})

app.patch('/recipes/:recipesId',function(req,res){
  db.incrementLikes([req.body.likes,req.params.id],(err,data)=>{
    err ? res.sendStatus(400) : res.json(data)
  })
})

app.delete('/recipes/:recipeId',function(req,res){
  db.deleteRecipe([req.params.id],(err,data)=>{
    err ? res.sendStatus(400) : res.json(data)
  })
})



app.listen(3000, function() {
  console.log('listening on port 3000!');
});

