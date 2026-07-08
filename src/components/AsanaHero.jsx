import "./AsanaHero.css";
import placeholderImg from "../assets/asanas/lotus.png";

// Day 5: now driven by real DB data via props instead of hardcoded
// "Lotus Pose" content.
//
// TODO (Day 6): the Asanas table has no image column yet, so every asana
// currently falls back to the same placeholder image. Add a real
// image/thumbnail source (column or asset-mapping table) and swap
// placeholderImg out once that exists.
function AsanaHero({ asana }) {
  if (!asana) {
    return null;
  }

  return (
    <section className="asana-hero">
      <div className="asana-left">
        <img src={placeholderImg} alt={asana.english_name} />
      </div>

      <div className="asana-right">
        <span className="level">{asana.difficulty}</span>

        <h1>{asana.english_name}</h1>

        <p>{asana.description}</p>

        <div className="stats">
          <div>
            <h3>Difficulty</h3>
            <p>{asana.difficulty}</p>
          </div>

          <div>
            <h3>Duration</h3>
            <p>{asana.duration || "N/A"}</p>
          </div>

          <div>
            <h3>Category</h3>
            <p>{asana.category_name}</p>
          </div>
        </div>
      </div>
    </section>
  );
}

export default AsanaHero;
