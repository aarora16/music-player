import React from 'react'
import { Button, Divider, Form, Grid, Segment } from 'semantic-ui-react'
import { NavLink } from 'react-router-dom';
import { withRouter } from 'react-router'

class Login extends React.Component {


  state = {
    username: "",
    password: "",
  }

  handleInputChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()

    fetch('http://localhost:3000/login',{
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        user: this.state
      })
    }).then(res => res.json())
    .then(token => {
      localStorage.setItem('token', token.auth_key)
      this.props.history.push('/')
     
    }
      
      )
  }


  
  render(){
    return(
      <div className="Main">
      <br></br>
      <br></br>
      <br></br>
      <br></br>

    <Segment placeholder>
    <Grid columns={2} relaxed='very' stackable>
      <Grid.Column>
        <Form onSubmit={this.handleSubmit}>
          <Form.Field>
          <label>Username</label>
              <input
              id="username"
              type="text"
              name="username" 
              onChange={this.handleInputChange}
              value={this.state.username}
              autocomplete= "off"
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
              autocomplete="off"
              />
        </Form.Field>
              <Button type="submit" content='Login' primary />
        </Form>
      </Grid.Column>

      <Grid.Column verticalAlign='middle'>
        <NavLink to="/signup" activeClassName="Sidelink">
        <Button content='Sign up' icon='signup' size='big' />
        </NavLink>
      </Grid.Column>
    </Grid>

    <Divider vertical>Or</Divider>
    </Segment>

      </div>
    )
  }


}



export default withRouter(Login);