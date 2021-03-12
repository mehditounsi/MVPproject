import axios from 'axios'
import React from 'react'

class Recipe extends React.Component {
    constructor(props){
        super(props)
        this.state={
        
        }
    }
 
    
  render(){
return(
    
<div className='recipe'>
    <h1 className="post-title" >{this.props.recipe.title}</h1>
    <img src={this.props.recipe.imageUrl} className="post-image" />
    {this.props.recipe.body.split("\n").map((e,i) => <p key={i}>{e}</p>)}
    <button onClick={()=>{this.props.remove(this.props.recipe)}}>Remove</button>
</div>
)}
}
export default Recipe ;