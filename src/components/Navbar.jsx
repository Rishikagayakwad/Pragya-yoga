import "./Navbar.css";
import logo from "../assets/logo.png";
import { Link } from "react-router-dom";
import { FiMenu, FiX } from "react-icons/fi";
import { useState } from "react";

function Navbar() {
  const [open, setOpen] = useState(false);

  return (
    <nav className="navbar">
      {/* Logo */}
      <div className="logo">
        <img src={logo} alt="Pragya Yoga Logo" />
        <h2>Pragya Yoga Verse</h2>
      </div>

      {/* Mobile Menu Button */}
      <div
        className="menu-icon"
        onClick={() => setOpen(!open)}
      >
        {open ? <FiX /> : <FiMenu />}
      </div>

      {/* Navigation */}
      <ul className={open ? "nav-links active" : "nav-links"}>
        <li>
          <Link to="/" onClick={() => setOpen(false)}>
            Home
          </Link>
        </li>

        <li>
          <Link to="/search" onClick={() => setOpen(false)}>
            Search
          </Link>
        </li>

        <li>
          <a href="#categories" onClick={() => setOpen(false)}>
            Categories
          </a>
        </li>

        <li>
          <Link to="/about" onClick={() => setOpen(false)}>
            About
          </Link>
        </li>

        
      </ul>

     <Link to="/login">
  <button className="login-btn">
    Login
  </button>
</Link>
    </nav>
  );
}

export default Navbar;