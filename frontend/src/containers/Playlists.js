import React from 'react'
import { Form, Button } from 'semantic-ui-react'



class Playlists extends React.Component {
  
  initialState = {
    name: "",
    description: "",
    user_id: 1
  }

  state = this.initialState

  handleInputChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }




  addPlaylist = (e) => {
    e.preventDefault()
    this.props.addNewPlaylist(this.state)
    // this.setState(this.initialState)
  }

  

  render() {
    return (
      <div className="Main">
          <br></br>
          <br></br>
          <br></br>
          <br></br>
          <Form onSubmit={this.addPlaylist}>
            <Form.Field>
              <label>Playlist Name</label>
              <input
              id="playlist-name"
              type="text"
              name="name"
              onChange={this.handleInputChange}
              value={this.state.name}
              placeholder=""
              ></input>
            </Form.Field>
            <Form.Field>
              <label>Description</label>
              <input
              id="playlist-description"
              type="text"
              name="description"
              onChange={this.handleInputChange}
              value={this.state.description}
              ></input>
            </Form.Field>
            <Button type="submit" content='Add' primary />


          </Form>



      </div>
    )


  }
}

  


export default Playlists