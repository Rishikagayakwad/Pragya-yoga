import "./FeaturedAsanas.css";

import tree from "../assets/asanas/tree.png";
import cobra from "../assets/asanas/cobra.png";
import lotus from "../assets/asanas/lotus.png";
import warrior from "../assets/asanas/warrior.png";
import bridge from "../assets/asanas/bridge.png";
import triangle from "../assets/asanas/triangle.png";

function FeaturedAsanas() {

  const asanas = [
    {
      image: tree,
      name: "Tree Pose",
      level: "Beginner",
      duration: "30 sec",
      rating: "4.8"
    },
    {
      image: cobra,
      name: "Cobra Pose",
      level: "Intermediate",
      duration: "40 sec",
      rating: "4.7"
    },
    {
      image: lotus,
      name: "Lotus Pose",
      level: "Beginner",
      duration: "2 min",
      rating: "4.9"
    },
    {
      image: warrior,
      name: "Warrior Pose",
      level: "Intermediate",
      duration: "45 sec",
      rating: "4.8"
    },
    {
      image: bridge,
      name: "Bridge Pose",
      level: "Advanced",
      duration: "1 min",
      rating: "4.6"
    },
    {
      image: triangle,
      name: "Triangle Pose",
      level: "Beginner",
      duration: "30 sec",
      rating: "4.8"
    }
  ];

  return (
    <section className="featured">

      <h2>Featured Yoga Asanas</h2>

      <p>Discover the most popular yoga poses.</p>

      <div className="asana-grid">

        {asanas.map((asana, index) => (

          <div className="asana-card" key={index}>

            <img src={asana.image} alt={asana.name} />

            <div className="card-content">

              <h3>{asana.name}</h3>

              <p><strong>Level:</strong> {asana.level}</p>

              <p><strong>Duration:</strong> {asana.duration}</p>

              <p>⭐ {asana.rating}</p>

              <button>View Details</button>

            </div>

          </div>

        ))}

      </div>

    </section>
  );
}

export default FeaturedAsanas;