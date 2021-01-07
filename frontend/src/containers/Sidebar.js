import React from 'react'
import newlogo from '../images/logo2.png'
import { NavLink } from 'react-router-dom'
import Searchbar from '../components/Searchbar'
import Playlists from './Playlists'
import { Icon } from 'semantic-ui-react'


const Sidebar = () => {
    return (
      <div className="Sidebar">
          <img src={newlogo} alt="none"></img>
          <Searchbar />
          <div>
            <NavLink exact to="/" activeClassName="Sidelink"><Icon name="home"></Icon>Home</NavLink><br></br>
            <NavLink to="/songs" activeClassName="Sidelink"><Icon name="folder"></Icon>Browse</NavLink><br></br>
          </div>

          <Playlists />
  
      </div>
    )

}


export default Sidebar

