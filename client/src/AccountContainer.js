import './AccountPage.css';
import {Link} from "react-router-dom"
import React from 'react';
import Checking from "./components/Checking";
import Savings from "./components/Savings";
import Exchange from "./components/Exchange";

function AccountContainer({userdata}) {
  const user = userdata.name
  const message = `Welcome, ${user}`
  return (
    <div className="AccountContainer">
      <div className="Button-Container">
        <div className="users-img">
          <img src = "https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/000/167/original/money-bag.png" />
        </div>

        <div>
          
          <h1 className = "name-text">
            {/* <span className = "icon">
            <img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3tXHN3VhSpLWkDZmCi0IDyxUM78PgvPqpiw&usqp=CAU"/> 
          </span> */}
          {message}
          </h1>
          <span className='avatar'> <img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/unknown-512.png" /> </span>

        </div>

        <div className = "btn-group">
          <Link to= "/checking">
          <button className="bttns">Checking</button>
          </Link>
          <Link to= "/savings">
          <button className="bttns">Savings</button>
          </Link>
          <Link to= "/exchanges">
          <button className="bttns">Exchange</button>
          </Link>
      
        </div>

      </div>
    </div>
  );
}

export default AccountContainer;