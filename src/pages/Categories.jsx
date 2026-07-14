import "./Categories.css";
import { categories } from "../data/categories";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { FaArrowRight } from "react-icons/fa";
import { useNavigate } from "react-router-dom";

function Categories() {
  const navigate = useNavigate();

  return (
    <>
      <Navbar />

      <div className="categories-page">

        {/* Hero Section */}

        <section className="categories-hero">

          <span className="hero-tag">
            Practice by Style
          </span>

          <h1>
            Explore Yoga Categories
          </h1>

          <p>
            Discover yoga asanas organized by practice style,
            wellness goals, and experience level.
          </p>

        </section>

        {/* Categories Grid */}

        <section className="categories-grid">

          {categories.map((category) => {

            const Icon = category.icon;

            return (

              <div
                className="category-card"
                key={category.id}
              >

                <div
                  className="category-icon"
                  style={{
                    background: `${category.color}15`,
                    color: category.color,
                  }}
                >
                  <Icon />
                </div>

                <h2>{category.title}</h2>

                <span>{category.poses} Asanas</span>

                <p>
                  {category.description}
                </p>

                <button
                  onClick={() =>
                    navigate("/asanas")
                  }
                >
                  Explore
                  <FaArrowRight />
                </button>

              </div>

            );

          })}

        </section>

        {/* Featured Section */}

        <section className="featured-category">

          <div className="featured-left">

            <span>Featured Category</span>

            <h2>Standing Yoga</h2>

            <p>
              Standing yoga poses improve posture,
              strengthen your legs, increase balance,
              and build confidence. Perfect for beginners
              and daily practice.
            </p>

            <ul>

              <li>✓ Improves Balance</li>

              <li>✓ Strengthens Legs</li>

              <li>✓ Better Posture</li>

              <li>✓ Beginner Friendly</li>

            </ul>

            <button
              onClick={() =>
                navigate("/asanas")
              }
            >
              Explore Standing Asanas
            </button>

          </div>

          <div className="featured-right">

            <div className="circle one"></div>

            <div className="circle two"></div>

            <div className="circle three"></div>

            <div className="featured-icon">
              🧘
            </div>

          </div>

        </section>

        {/* Practice Levels */}

        <section className="levels">

          <h2>
            Practice by Level
          </h2>

          <div className="level-grid">

            <div className="level-card">

              <h3>Beginner</h3>

              <p>
                Simple yoga poses to build flexibility,
                posture, and confidence.
              </p>

              <button
                onClick={() =>
                  navigate("/asanas")
                }
              >
                View
              </button>

            </div>

            <div className="level-card">

              <h3>Intermediate</h3>

              <p>
                Improve strength, endurance and
                body control.
              </p>

              <button
                onClick={() =>
                  navigate("/asanas")
                }
              >
                View
              </button>

            </div>

            <div className="level-card">

              <h3>Advanced</h3>

              <p>
                Challenge yourself with demanding
                yoga postures.
              </p>

              <button
                onClick={() =>
                  navigate("/asanas")
                }
              >
                View
              </button>

            </div>

          </div>

        </section>

      </div>

      <Footer />

    </>
  );
}

export default Categories;