import React from 'react'
import newlogo from '../images/logo2.png'
import { NavLink } from 'react-router-dom'
import Searchbar from '../components/Searchbar'
import { Icon } from 'semantic-ui-react'


// class Sidebar extends React.Component {

  
 

//   render() {

const Sidebar = (props) => {
    
    return (
      <div className="Sidebar">
          <img src={newlogo} alt="none"></img>
          <Searchbar />
          <div>
            <NavLink exact to="/" activeClassName="Sidelink"><Icon name="home"></Icon>Library</NavLink><br></br>
            <NavLink to="/songs" activeClassName="Sidelink"><Icon name="folder"></Icon>Browse</NavLink><br></br>
            <NavLink to="/playlist" activeClassName="SideLink"><Icon name="plus"></Icon>New Playlist</NavLink><br></br>
            <h5>PLAYLISTS</h5>
            <hr></hr>
            <ul>
            {
              props.playlists.map(playlist => (
                <li key={playlist.id}>{playlist.name}</li>
              ))
            }
            </ul>

          </div>

 
  
      </div>
    )
          }



export default Sidebar

