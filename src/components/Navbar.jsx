import "./Navbar.css";

import logo from "../assets/logo.png";

function Navbar() {
  return (
    <nav className="navbar">

      <div className="logo">

  <img src={logo} alt="Pragya Yoga Logo" />

  <h2>Pragya Yoga Verse</h2>

</div>

      <ul className="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#">Search</a></li>
        <li><a href="#">About</a></li>
        
      </ul>

      <button className="login-btn">
        Login
      </button>

    </nav>
  );
}

export default Navbar;