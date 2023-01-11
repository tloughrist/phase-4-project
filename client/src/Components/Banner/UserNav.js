import React, { useContext } from "react";
import { NavLink, useLocation, useHistory } from "react-router-dom";
import { LoggedInContext } from '../../App';


function UserNav() {

    const isLoggedIn = useContext(LoggedInContext);

    let history = useHistory();

    function authorize() {
        if (!isLoggedIn) {
            history.push("/home");
        } else {
            return;
        }
    };

    authorize();

    return (
        <div className="navbar">
            <NavLink to="/" exact className={useLocation().pathname === "/" ? "navlink navlink-active" : "navlink"}>Home</NavLink>
            <NavLink to="/game_nights" exact className={useLocation().pathname === "/game_nights" ? "navlink navlink-active" : "navlink"}>Game Nights</NavLink>
            <NavLink to="/games" exact className={useLocation().pathname === "/games" ? "navlink navlink-active" : "navlink"}>Games</NavLink>
            <NavLink to="/friends" exact className={useLocation().pathname === "/friends" ? "navlink navlink-active" : "navlink"}>Friends</NavLink>
            <NavLink to="/profile" exact className={useLocation().pathname === "/profile" ? "navlink navlink-active" : "navlink"}>Profile</NavLink>
            <NavLink to="/messages" exact className={useLocation().pathname === "/messages" ? "navlink navlink-active" : "navlink"}>Messages</NavLink>
        </div>
    );
};

export default UserNav;