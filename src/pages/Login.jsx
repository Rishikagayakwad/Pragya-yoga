import "./Login.css";
import logo from "../assets/logo.png";


function Login() {
  return (
    <div className="login-page">
      <div className="login-card">

        <img src={logo} alt="Logo" className="login-logo" />

        <h1>Welcome Back</h1>

        <p>Login to continue your yoga journey.</p>

        <form>

          <div className="input-group">
            <label>Email</label>
            <input
              type="email"
              placeholder="Enter your email"
            />
          </div>

          <div className="input-group">
            <label>Password</label>
            <input
              type="password"
              placeholder="Enter your password"
            />
          </div>

          <button type="submit">
            Login
          </button>

        </form>

        <p className="signup">
          Don't have an account? <span>Sign Up</span>
        </p>

      </div>
    </div>
  );
}

export default Login;