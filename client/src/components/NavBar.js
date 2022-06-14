import React from "react";
import { NavLink } from "react-router-dom"

function NavBar() {
    return (

        <nav classname= "navbar">

            <NavLink to="/checking">Checking</NavLink>
            <NavLink to="/savings">Savings</NavLink>
            <NavLink to="/exchange">Exchange</NavLink>

            
        </nav>
    );
}

export default NavBar;