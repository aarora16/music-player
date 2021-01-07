import React from 'react'
import { Form, Button } from 'semantic-ui-react'


class Signup extends React.Component {
  state = {
    username: "",
    password: "",
    img_url: ""
  }

  handleInputChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    fetch('http://localhost:3000/users',{
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        user: this.state
      })
    }).then(res => res.json())
    .then(user => console.log(user))
  }

  render(){
    return (
      <div className="Main">
              <br></br>
              <br></br>
              <br></br>
              <br></br>

              <h2>Create an Account</h2>

      <Form onSubmit={this.handleSubmit}>
      <Form.Field>
          <label>Username</label>
          <input
          id="username"
          type="text"
          name="username" 
          onChange={this.handleInputChange}
          value={this.state.username}
          />
        </Form.Field>
        <Form.Field>
          <label>Password</label>
          <input
          id="password"
          type="password"
          name="password" 
          onChange={this.handleInputChange}
          value={this.state.password}
          />

        </Form.Field>
        <Form.Field>
          <label>Upload Image</label>
          <input
          id="image"
          type="file"
          accept="image/*"
          name="img_url" 
          onChange={this.handleInputChange}
          value={this.state.img_url}
          />

        </Form.Field>
        
        <Button type='submit'>Submit</Button>


          {/* <Form.Field>
              <label>Confirm Password</label>
              <input placeholder='Confirm Password'/>
              
          </Form.Field> */}
          {/* <Form.Field>
              <label>Upload Image</label>
              <input placeholder='Upload File' type="file" accept="image/*" capture
              />
              
          </Form.Field> */}
 
    </Form>
  
  
      </div>
    )

  }
}



export default Signup