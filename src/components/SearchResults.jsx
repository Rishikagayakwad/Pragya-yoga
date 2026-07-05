import "./SearchResults.css";

function SearchResults({ asanas }) {

  return (

    <section className="results">

      <h2>Search Results</h2>

      <div className="results-grid">

        {asanas.map((asana) => (

          <div className="yoga-card" key={asana.id}>

            <img src={asana.image} alt={asana.name} />

            <div className="card-body">

              <h3>{asana.name}</h3>

              <p>{asana.category}</p>

              <span>{asana.level}</span>

              <small>{asana.duration}</small>

              <button>View Details</button>

            </div>

          </div>

        ))}

      </div>

    </section>

  );

}

export default SearchResults;