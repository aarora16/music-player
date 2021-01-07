import React from 'react'
 import { Icon } from 'semantic-ui-react'

const Songs = (props) => {
    return (
        <div className="Main">
            <br></br>
            <br></br>
            <br></br>
            <br></br>


                
            <table>
                <tr>
                    <td>#</td>
                    <td>Name</td>
                    <td>Artist</td>
                </tr>
                {props.songs.map(song => (
                <tr>
                    <td>{song.id}</td>
                    <td>{song.name}</td>
                    <td>{song.artist}</td>
                    <td><Icon name="plus" size="tiny" /></td>
                </tr>
                ))}
            </table>
              
          
     

        </div>
)
}





 export default Songs;