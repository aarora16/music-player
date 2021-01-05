import React from 'react'
import { Icon } from 'semantic-ui-react'

const Searchbar = props => {
    return (
        <div className="ui search">
        <div className="ui icon input">
          {/* <input onChange={(e)=> props.handleSearch(e)} className="prompt"/> */}
          <input className="searchbar"/>
          <Icon name="search" size="tiny" />
        </div>
      </div>
    )
}

export default Searchbar

