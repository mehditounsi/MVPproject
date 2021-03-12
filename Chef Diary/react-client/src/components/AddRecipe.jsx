import axios from 'axios'
import React from 'react'


class AddRecipe extends React.Component {
    constructor(props){
        super(props)
            this.state={
    title:"",
    image:"",
    body:""

            } 
            this.handleChange=this.handleChange.bind(this)
            this.postRecipe=this.postRecipe.bind(this)
        }
handleChange(e){
  
    this.setState({
        [e.target.id]: e.target.value
    })
    console.log(this.state)
}


postRecipe(e){
    e.preventDefault()
    axios.post("/recipes",this.state)
    
    .then((response)=>{
        console.log(response)
    })
    .catch((err)=>{
        console.log(err)
    })
}


    render() {
        return (
            <div id='add' className="create" >
                <input className="create-input" value={this.state.title} onChange={this.handleChange} id="title" placeholder="title"></input>
                <input className="create-input" value={this.state.image} onChange={this.handleChange} id="image" placeholder="image" ></input>
                <textarea className="create-body-textarea" value={this.state.body} onChange={this.handleChange} id="body" placeholder="body"></textarea>
                <button className="create-submit-button"  onClick={this.postRecipe}>Post Recipe</button>
            </div>
        )
    }
}

export default AddRecipe ;