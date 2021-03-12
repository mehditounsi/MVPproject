import React from 'react';
import ReactDOM from 'react-dom';
import Recipe from './components/Recipe.jsx'
import RecipeList from './components/RecipeList.jsx'
import AddRecipe from './components/AddRecipe.jsx'
import Home from './components/Home.jsx'
import About from './components/About.jsx'
import axios from 'axios'
class App extends React.Component {
  constructor() {
    super();
    this.state = {
    view : 'recipeList',
    data:[],
    index :0
    }
  }

  componentDidMount(){
    axios.get('/recipes')
    .then((response)=>{
      this.setState({data : response.data})
      console.log(response.data)
    })
  }
changeView(option,id){
  this.setState({
    view:option,
    index:id
  })
}
renderView() {
  if (this.state.view === 'recipeList') {
    return <RecipeList data={this.state.data} handleClick={(id) => this.changeView('anyview',id)}/>
  } else {
    return <AddRecipe/>
  }
}
render(){
    return(
<div>
<div>
          <span 
            onClick={() => this.changeView('recipeList')}>
            Chef Diary
          </span>
          <span 
            onClick={() => this.changeView('recipeList')}>
            Recipe
          </span >
          <span onClick={() => this.changeView('add')} > Post </span>
          <span >
            About us
          </span>
        </div>

        <div >
          {this.renderView()}
        </div>



</div>)
}
}

ReactDOM.render(<App/>, document.getElementById('app'))