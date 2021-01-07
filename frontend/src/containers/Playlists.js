import React from 'react'
import { Icon } from 'semantic-ui-react'



class Playlists extends React.Component {
  state = {
    playlists: []
  }

  componentDidMount() {
    fetch('http://localhost:3000/playlists')
    .then(res => res.json())
    .then(playlists => this.setState({ playlists }))
  }
  
  // addPlaylist = (name, description) => {
  //   fetch(`http://localhost:3000/playlists/${id}`,{
  //     method: "POST"
  //   }).then(res = res.json())

  //   const playlists = this.state.playlists
  //   const updatedPlaylists = playlists.push()
  //   this.setState({
  //     name: 
  //   })
  // }
  

  render() {
    return (
      <div className="playlists">
          <h5>PLAYLISTS</h5>
          <Icon name="plus" size="tiny" />New Playlist
            <hr></hr>
            <ul>
            {
              this.state.playlists.map(playlist => (
                <li key={playlist.id}>{playlist.name}</li>
              ))
            }
            </ul>

      </div>
    )


  }
}

  


export default Playlists