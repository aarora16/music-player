import React from 'react'
import { Button, Divider, Form, Grid, Segment } from 'semantic-ui-react'
import { NavLink } from 'react-router-dom';

class Login extends React.Component {

  state = {
    username: "",
    password: "",
    validUser: false
  }

  handleInputChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()

    fetch('http://localhost:3000/users')
    .then(res => res.json())
    .then(users => {
      users.forEach(user => {
        if (user.name === e.target.name) {
          this.setState({
            validUser: !this.state.validUser        
           })
        }
      })
    })
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



export default Login;