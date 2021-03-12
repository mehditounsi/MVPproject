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
        }
handleChange(e){
    
}


Post(){
    axios.post("/recipes",this.state.title,this.state.image,this.state.body)
    
}


    render() {
        return (
            <div id='add'>
                <input onChange={this.handleChange} id="" placeholder="title"></input>
                <input onChange={this.handleChange} id="" placeholder="image"></input>
                <input onChange={this.handleChange} id="" placeholder="body"></input>
                <button>Post Recipe</button>
            </div>
        )
    }
}

export default AddRecipe ;