import React from "react";
import { NavLink } from "react-router-dom"

function NavBar() {
    return (
        <nav>
            <NavLink to="/">Personal</NavLink>
            <NavLink to="/business">Business</NavLink>
            
            
        </nav>
    );
}

export default NavBar;