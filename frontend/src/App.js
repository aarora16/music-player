import './App.css';
import React from 'react'
import Sidebar from './containers/Sidebar'
import Main from './containers/Main'
import Topbar from './containers/Topbar'
import Player from './containers/Player'




class App extends React.Component {
    render() {
        return (
            <div className="App">
                <Topbar />
                <Sidebar />
                <Player />
                <Main />
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
