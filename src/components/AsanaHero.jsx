import "./AsanaHero.css";

import lotus from "../assets/asanas/lotus.png";

function AsanaHero() {
  return (
    <section className="asana-hero">

      <div className="asana-left">

        <img src={lotus} alt="Lotus Pose" />

      </div>

      <div className="asana-right">

        <span className="level">
          Beginner
        </span>

        <h1>Lotus Pose</h1>

        <p>
          Lotus Pose (Padmasana) is one of the most
          powerful meditation poses that improves
          posture, flexibility and inner peace.
        </p>

        <div className="stats">

          <div>
            <h3>Difficulty</h3>
            <p>Beginner</p>
          </div>

          <div>
            <h3>Duration</h3>
            <p>5 Minutes</p>
          </div>

          <div>
            <h3>Category</h3>
            <p>Meditation</p>
          </div>

        </div>

      </div>

    </section>
  );
}

export default AsanaHero;