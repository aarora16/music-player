import React from 'react'
import { Icon } from 'semantic-ui-react'




const Topbar = () => {
  return (
      <div className="Topbar">
        <Icon name="chevron left" size="small" />                <Icon name="chevron right" size="small" />
      


        
        <span className="login-link">Login/Sign Up</span>

      </div>

    
  )
}


export default Topbar