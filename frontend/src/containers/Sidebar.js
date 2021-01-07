import React from 'react'
import logo from '../logo.png'
import { NavLink } from 'react-router-dom'
import Searchbar from '../components/Searchbar'
import Playlists from './Playlists'
// import { Icon } from 'semantic-ui-react'


const Sidebar = () => {
    return (
      <div className="Sidebar">
          <img src={logo} alt="none"></img>
          <Searchbar />
          <div>
          {/* <NavLink exact to="/" activeClassName="Sidelink">Home</NavLink><br></br>
            <NavLink to="/songs" activeClassName="Sidelink">Browse</NavLink><br></br>
            <NavLink to="/library" activeClassName="Sidelink"> Your Library</NavLink> */}
          </div>

          <Playlists />
  
      </div>
    )

}


export default Sidebar

