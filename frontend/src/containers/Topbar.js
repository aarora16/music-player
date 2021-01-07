import React from 'react'
import { Icon } from 'semantic-ui-react'
import { NavLink } from 'react-router-dom'




const Topbar = () => {
  return (
      <div className="Topbar">
        <Icon name="chevron left" size="small" />                <Icon name="chevron right" size="small" />
      


        
        <span className="login-link"><NavLink exact to="/login" activeClassName="Sidelink">Login/Sign Up</NavLink></span>

      </div>

    
  )
}


export default Topbar