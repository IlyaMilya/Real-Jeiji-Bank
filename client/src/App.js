import './App.css';
import { Route, Switch } from 'react-router-dom'
import Home from './components/Home'
import React from 'react'
import NavBar from './components/NavBar';
import Signup from './components/Signup';
function App() {
  return (
    <div>
      <h1>Jeiji Bank</h1>
      <NavBar />
      <Switch>
        <Route  exact path="/">
           <Home />
        </Route>
        <Route exact path="/signup">
          <Signup />
        </Route>
      </Switch>
      <h1>Links</h1>
    </div>
  )
}
export default App;