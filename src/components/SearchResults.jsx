import { useNavigate } from "react-router-dom";
import "./SearchResults.css";
import lotus from "../assets/asanas/lotus.png";

function SearchResults({ asanas }) {
  const navigate = useNavigate();

  return (
    <section className="results">
      <h2>Search Results</h2>

      <div className="results-grid">
        {asanas.map((asana) => (
          <div className="yoga-card" key={asana.asana_id}>
            <img src={lotus} alt={asana.english_name} />

            <div className="card-body">
              <h3>{asana.english_name}</h3>
              <p><strong>Level:</strong> {asana.difficulty}</p>
              <small><strong>Duration:</strong> {asana.duration}</small>

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

export default SearchResults;