import React from 'react'
 import { Tab, Table } from 'semantic-ui-react'

const Songs = (props) => {
    return (
        <div className="Main">
            <br></br>
            <br></br>
            <br></br>
            <br></br>

            <Table basic='very'>
            <Table.Header>
      <Table.Row>
        <Table.HeaderCell>Name</Table.HeaderCell>
        <Table.HeaderCell>Artist</Table.HeaderCell>
        <Table.HeaderCell>Album</Table.HeaderCell>
        <Table.HeaderCell>Length</Table.HeaderCell>
      </Table.Row>
      {props.songs.map(song => (
          <Table.Row>
          <Table.Cell>{song.name}</Table.Cell>
          <Table.Cell>{song.artist}</Table.Cell>
          <Table.Cell>{song.album}</Table.Cell>
          <Table.Cell>{song.length}</Table.Cell>
          </Table.Row>

      ))}

    </Table.Header>

            </Table>
  
              
          
     

        </div>
)
}





 export default Songs;