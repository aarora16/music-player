import './App.css';
import React from 'react'
import Sidebar from './containers/Sidebar'
import Main from './containers/Main'
import Topbar from './containers/Topbar'
import Player from './containers/Player'
import Signup from './components/Signup'
import Login from './components/Login'
import Songs from './containers/Songs'
import {
    BrowserRouter as Router,
    Route,
    Switch
} from 'react-router-dom'



class App extends React.Component {

    state = {
        songs: [],
 
    }



    componentDidMount() {
        fetch('http://localhost:3000/songs')
        .then(res => res.json())
        .then(songs => this.setState( { songs }))
    }
    





    render() {
        return (
            <div className="App">
                <Router>
                    <Topbar />
                    <Sidebar />
                    <Player />
                    <Switch>
                        <Route exact path="/" component={() => {
                            return <Main songs={this.state.songs}/>
                        }}/>
                        <Route exact path="/login" component={() => {
                            return <Login />
                        }}/>
                        <Route exact path="/signup" component={() => {
                            return <Signup />
                        }}/>
                        <Route exact path="/songs" component={() => {
                            return <Songs />
                        }}/>

                    </Switch>
                </Router>
            </div>
        )
    }
} 


export default App;


// <Router>

// <Header />

// <Switch>

//   <Route exact path="/" component={() => {
//     return <CardContainer removePost={this.removePost} />
//   }}/>

//   <Route path="/new_post" component={() => {
//     return <NewImageForm />
//   }}/>

//   <Route exact path="/signup" component={() => {
//     return <> Signup </>
//   }}/>

//   <Route path="/login" component={() => {
//     return <> Login </>
//   }}/>

//   <Route component={() => {
//     return <Redirect to='/' />
//   }}/>

// </Switch>

// </Router>
