import React from 'react'


class RecipeList extends React.Component {
      
    render (props) { 
      return(
      <div className='recipeList'>
       <ul>
      {this.props.data.map((element,key)=>
        <li  key={key}>
        <div onClick={()=>{this.props.handleClick("recipe",element)}}>{element.title}</div>
        <img src={element.imageUrl}
        onClick={()=>{this.props.handleClick("recipe",element)}}/>
        <span>{element.body.slice(0,element.body.indexOf('.'))+" ..."}</span>
      </li>
      )}
    </ul>
      </div>
    )};
     }

export default RecipeList ;