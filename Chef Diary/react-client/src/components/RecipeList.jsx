import React from 'react'


class RecipeList extends React.Component {
      
    render (props) { 
      return(
      <div className='recipeList' >
       <ul>
      {this.props.data.map((element,key)=>
        <li className="feed-list-item"  key={key}>
        <div className="feed-list-item-title" onClick={()=>{this.props.handleClick("recipe",element)}}>{element.title}</div>
        <img className="feed-list-item-image" src={element.imageUrl}
        onClick={()=>{this.props.handleClick("recipe",element)}}/>
        <span className="feed-list-item-lede" >{element.body.slice(0,element.body.indexOf('.'))+" ..."}</span>
      </li>
      )}
    </ul>
      </div>
    )};
     }

export default RecipeList ;