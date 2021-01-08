import React from 'react'
import { Card, Icon } from 'semantic-ui-react'



const Main = (props) => {
  return (
    <div className="Main">
      <br></br>
      <br></br>
      <br></br>
      <br></br>

      
      {/* <h1>All Songs</h1> */}

      
      
      <Card.Group>
            {
              props.songs.map(recent => (
                <Card key={recent.id}>
                <Card.Content header={recent.name} />
                <Card.Content description={recent.artist} />
                <Card.Content extra>
                  <Icon name="play" />Play Song
                </Card.Content>
                </Card>
              ))
            }
      </Card.Group>
    </div>
  )
}


export default Main