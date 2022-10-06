import React from 'react'
import { NavLink } from "react-router-dom"


function NavBar () {
    return(
        <div className="navbar">
            <NavLink exact to ="/"> Home </NavLink>
            <NavLink to="/signup"> Sign Up </NavLink>
            <NavLink to="/login"> Login </NavLink>
        </div>
    )
}

export default NavBar