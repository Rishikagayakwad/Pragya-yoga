import "./Hero.css";
import heroImage from "../assets/hero.png";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";


function Hero() {
  return (
    <section className="hero">

      <div className="hero-content">

        {/* Left Section */}
        <div className="hero-text">

          <h1>
            Discover Yoga <span>in 3D</span>
          </h1>

          <p>
            Learn yoga with interactive lessons, AI-powered guidance,
            detailed asana information, and immersive 3D visualization.
            Start your journey toward a healthier and more mindful life.
          </p>

          <div className="hero-buttons">

            <button className="btn-primary">
              Get Started
            </button>

            <Link to="/asana">
  <button className="btn-secondary">
    Explore Asanas
  </button>
</Link>

          </div>

        </div>

        {/* Right Section */}

        <div className="hero-image">

          <img src={heroImage} alt="Yoga Pose" />

        </div>

      </div>

    </section>
  );
}

export default Hero;