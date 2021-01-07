import React from 'react'
import { Card, Icon } from 'semantic-ui-react'



const Main = (props) => {
  return (
    <div className="Main">
      <br></br>
      <br></br>
      <br></br>
      <br></br>

      <h1>All Songs</h1>
      <img src="https://editablegifs.com/gifs/gifs/christmas-2/output.gif?egv=1871" alt="snowman"></img>
      <img src="https://editablegifs.com/gifs/gifs/christmas-2/output.gif?egv=1871" alt="snowman"></img>
      <img src="https://editablegifs.com/gifs/gifs/christmas-2/output.gif?egv=1871" alt="snowman"></img>
      <img src="https://editablegifs.com/gifs/gifs/christmas-2/output.gif?egv=1871" alt="snowman"></img>

      
      
      <Card.Group>
            {
              props.songs.map(recent => (
                <Card>
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