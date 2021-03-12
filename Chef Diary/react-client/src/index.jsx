import React from 'react';
import ReactDOM from 'react-dom';
import Recipe from './components/Recipe.jsx'
import RecipeList from './components/RecipeList.jsx'
import AddRecipe from './components/AddRecipe.jsx'
import About from './components/About.jsx'
import axios from 'axios'
class App extends React.Component {
  constructor() {
    super();
    this.state = {
    view : 'recipeList',
    data:[],
    recipe :{}
    }
    this.changeView=this.changeView.bind(this)
    this.removeRecipe=this.removeRecipe.bind(this)
  }

  componentDidMount(){
    axios.get('/recipes')
    .then((response)=>{
      this.setState({data : response.data})
      console.log(response.data)
    })
  }
changeView(view,recipe){
  this.setState({
    view:view,
    recipe:recipe
  })

}
removeRecipe(){
  axios.delete(`/recipes/${this.state.recipe}`)
  .then(response=>{
      console.log(response)
  })
  .catch(err=>{
      throw err
  })
}
renderView() {
  if (this.state.view === 'recipeList') {
    return <RecipeList data={this.state.data} handleClick={this.changeView}/>
  }else if(this.state.view === 'recipe') {
  return <Recipe recipe={this.state.recipe} remove={this.removeRecipe}/>
  } else if(this.state.view==='about'){
    return <About/>
  }
  else {
    return <AddRecipe/>
  }
}
render(){
    return(
<div>
<div className="nav" >
          <span className="logo"
            onClick={() => this.changeView('recipeList')}>
            Chef Diary
          </span>
          <span className={this.state.view === 'recipeList'
            ? 'nav-selected'
            : 'nav-unselected'}
            onClick={() => this.changeView('recipeList')}>
            Recipe
          </span >
          <span className="nav-unselected" onClick={() => this.changeView('add')} > Post </span>

          <span className="nav-unselected" onClick={()=> this.changeView('about')} >
            About us
          </span>
        </div>

        <div className="main" >
          {this.renderView()}
        </div>



</div>)
}
}

ReactDOM.render(<App/>, document.getElementById('app'))