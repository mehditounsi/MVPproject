import React from 'react'


class AddRecipe extends React.Component {
    constructor(props){
        super(props)
            this.state={
    
            }
        }
    render() {
        return (
            <div id='add'>
                <input placeholder="title"></input>
                <input placeholder="image"></input>
                <input placeholder="body"></input>
            </div>
        )
    }
}

export default AddRecipe ;