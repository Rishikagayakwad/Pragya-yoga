import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "./FeaturedAsanas.css";
import { getFeaturedAsanas } from "../services/api";
import tree from "../assets/asanas/tree.png";
import lotus from "../assets/asanas/lotus.png";
import warrior from "../assets/asanas/warrior.png";
import triangle from "../assets/asanas/triangle.png";

// Local images are keyed by slug since the DB has no image column yet.
const imagesBySlug = {
  tree,
  lotus,
  "warrior-i": warrior,
  triangle,
};

function FeaturedAsanas() {
  const [asanas, setAsanas] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    getFeaturedAsanas()
      .then((data) => setAsanas(data || []))
      .catch(() => setError("Couldn't load featured asanas."))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <p>Loading featured asanas...</p>;
  if (error) return <p>{error}</p>;

  return (
    <section className="featured">
      <h2>Featured Yoga Asanas</h2>
      <p>Discover the most popular yoga poses.</p>
      <div className="asana-grid">
        {asanas.map((asana) => (
          <div className="asana-card" key={asana.asana_id}>
            <img src={imagesBySlug[asana.slug]} alt={asana.english_name} />
            <div className="card-content">
              <h3>{asana.english_name}</h3>
              <p><strong>Level:</strong> {asana.difficulty}</p>
              <p><strong>Duration:</strong> {asana.duration}</p>
              <button onClick={() => navigate(`/asana/${asana.slug}`)}>
                View Details
              </button>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}

export default FeaturedAsanas;