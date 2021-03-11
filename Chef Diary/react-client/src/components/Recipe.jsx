import React from 'react'

class Recipe extends React.Component {
    constructor(props){ 
        super(props)
            this.state={ 

            }
        }
  render(){
return(
<div className='recipe' >
 
    <h1 className="post-title">{this.props.data.title}</h1>
    <img src={this.props.data.imageUrl} />
    {props.data.body.split("\n").map((e,i) => <p key={i}>{e}</p>)}
</div>
)}
}
export default Recipe ;