import "./About.css";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

import {
  FaLeaf,
  FaBrain,
  FaYinYang,
  FaBookOpen,
  FaAtom,
  FaPrayingHands,
  FaBullseye,
  FaEye,
  FaHandsHelping,
  FaPhoneAlt,
  FaEnvelope,
  FaMapMarkerAlt,
} from "react-icons/fa";

function About() {
  return (
    <>
      <Navbar />

      <div className="about-page">

        {/* HERO */}

        <section className="about-hero">

          <h1>About Us</h1>

          <h3>
            Pragya Yoga Verse – Where Science Meets Spirituality
          </h3>

          <p className="sanskrit">
            ऋतम्भरा तत्र प्रज्ञा
          </p>

          <div className="about-grid">

            <div>

              <h2>Our Story</h2>

              <p>
                We envision a world where individuals embrace conscious living
                through yoga. Our platform blends authentic yogic knowledge,
                scientific understanding, and modern technology to help everyone
                build a healthier and more mindful life.
              </p>

              <p>
                Through guided asanas, meditation, breathing techniques, and
                AI-assisted learning, we make yoga accessible for beginners as
                well as experienced practitioners.
              </p>

            </div>

            <div>

              <h2>Our Philosophy</h2>

              <p>
                Yoga is much more than physical exercise. It is a journey toward
                inner awareness, emotional balance, and spiritual growth.
              </p>

              <p>
                We believe every individual deserves authentic yoga education
                supported by technology and scientific research.
              </p>

            </div>

          </div>

        </section>

        {/* Mission */}

        <section className="mission-section">

          <h1>Mission • Vision • Goal</h1>

          <div className="mission-grid">

            <div className="mission-card">

              <FaHandsHelping />

              <h2>Mission</h2>

              <p>
                Empower everyone to cultivate awareness and inner peace through
                authentic yoga.
              </p>

            </div>

            <div className="mission-card">

              <FaEye />

              <h2>Vision</h2>

              <p>
                Build a global yoga platform combining spirituality and modern
                technology.
              </p>

            </div>

            <div className="mission-card">

              <FaBullseye />

              <h2>Goal</h2>

              <p>
                Make quality yoga education accessible to every learner.
              </p>

            </div>

          </div>

        </section>

        {/* Values */}

        <section className="values-section">

          <h1>Our Values</h1>

          <div className="values-grid">

            <div className="value-card">
              <FaLeaf />
              <h3>Holistic Well-being</h3>
              <p>Mind, Body & Soul.</p>
            </div>

            <div className="value-card">
              <FaYinYang />
              <h3>Harmony</h3>
              <p>Balance in every aspect of life.</p>
            </div>

            <div className="value-card">
              <FaBrain />
              <h3>Awareness</h3>
              <p>Build mindfulness through yoga.</p>
            </div>

            <div className="value-card">
              <FaBookOpen />
              <h3>Education</h3>
              <p>Authentic yogic knowledge.</p>
            </div>

            <div className="value-card">
              <FaAtom />
              <h3>Science</h3>
              <p>Research-backed learning.</p>
            </div>

            <div className="value-card">
              <FaPrayingHands />
              <h3>Spirituality</h3>
              <p>Connect with your inner self.</p>
            </div>

          </div>

        </section>

       
      </div>

      <Footer />
    </>
  );
}

export default About;