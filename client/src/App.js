import './App.css';
import { Route, Switch } from 'react-router-dom'
import Home from './components/Home'
import React from 'react'
import NavBar from './components/NavBar';
import Signup from './components/Signup';

import './components/Components.css'

import AccountContainer from './AccountContainer';
import Checking from './components/Checking';
import Savings from './components/Savings';
import Exchange from './components/Exchange';


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
        <Route exact path="/accounts">
          <AccountContainer />
        </Route>
        <Route exact path="/checking">
          <Checking />
        </Route>
        <Route exact path="/savings">
          <Savings />
        </Route>
        <Route exact path="/exchange">
          <Exchange />
        </Route>
      </Switch>
      <h1>Links</h1>
    </div>
  )
}
export default App;