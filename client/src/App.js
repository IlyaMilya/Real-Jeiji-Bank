import './App.css';
import { Route, Switch } from 'react-router-dom'
import Home from './components/Home'
import React from 'react'
import NavBar from './components/NavBar';
import Signup from './components/Signup';
import './components/Components.css'

function App() {
  return (
    <div>
      <h1 className='Login-Title'>Jeiji Bank</h1>
      <NavBar />
      <Switch>
        <Route  exact path="/">
           <div className = "home">
           <Home />
           </div>
        </Route>
        <Route exact path="/signup">
          <div className='signup'>
          <Signup />
          </div>
        </Route>
      </Switch>
      <h1>Links</h1>
    </div>
  )
}
export default App;