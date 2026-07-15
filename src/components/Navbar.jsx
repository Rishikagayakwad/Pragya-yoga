import "./Navbar.css";
import logo from "../assets/logo.png";
import { Link } from "react-router-dom";
import { useState } from "react";
import { FiMenu, FiX } from "react-icons/fi";
import { FaMoon, FaSun } from "react-icons/fa";
import { useTheme } from "../context/ThemeContext";

function Navbar() {
  const [open, setOpen] = useState(false);
  const { darkMode, setDarkMode } = useTheme();

  return (
    <header className="navbar">

      {/* LEFT */}
      <div className="nav-left">

        <button
          className="mobile-menu"
          onClick={() => setOpen(!open)}
        >
          {open ? <FiX /> : <FiMenu />}
        </button>

        <Link to="/" className="logo">
          <img src={logo} alt="logo" />
          <h2>Pragya Yoga Verse</h2>
        </Link>

      </div>

      {/* CENTER */}

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
          <Link to="/categories" onClick={() => setOpen(false)}>
            Categories
          </Link>
        </li>

        <li>
          <Link to="/about" onClick={() => setOpen(false)}>
            About
          </Link>
        </li>

      </ul>

      {/* RIGHT */}

      <div className="nav-right">

        <button
          className="theme-btn"
          onClick={() => setDarkMode(!darkMode)}
        >
          {darkMode ? <FaSun /> : <FaMoon />}
        </button>

        <Link to="/login">
          <button className="login-btn">
            Login
          </button>
        </Link>

      </div>

    </header>
  );
}

export default Navbar;