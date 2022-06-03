import './App.css';
import { Route, Switch } from 'react-router-dom'
import Home from './components/Home'
import React from 'react'
import NavBar from './components/NavBar';
import Signup from './components/Signup';
import AccountContainer from './AccountContainer';
import Checking from './components/Checking';
import Savings from './components/Savings';
import Exchange from './components/Exchange';

function App() {
  return (
    <div>
      <h1>Jeiji Bank</h1>
      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/signup">
          <Signup />
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