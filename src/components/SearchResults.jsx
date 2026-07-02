import { useState } from "react";
import asanasData from "../data/asanas";
import Filter from "./Filter";
import "./SearchResults.css";

function SearchResults() {

  const [search, setSearch] = useState("");
  const [category, setCategory] = useState("All");
  const [level, setLevel] = useState("All");

  // FILTER LOGIC
  const filteredAsanas = asanasData.filter((asana) => {

    const matchSearch =
      asana.name.toLowerCase().includes(search.toLowerCase());

    const matchCategory =
      category === "All" || asana.category === category;

    const matchLevel =
      level === "All" || asana.level === level;

    return matchSearch && matchCategory && matchLevel;
  });

  return (
    <div className="search-page">

      {/* Search Input */}
      <input
        className="search-input"
        type="text"
        placeholder="Search Yoga Asana..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
      />

      {/* Filters */}
      <Filter
        category={category}
        setCategory={setCategory}
        level={level}
        setLevel={setLevel}
      />

      {/* Results */}
      <div className="results-container">

        {filteredAsanas.length > 0 ? (
          filteredAsanas.map((asana) => (
            <div className="card" key={asana.id}>

              <img src={asana.image} alt={asana.name} />

              <h3>{asana.name}</h3>

              <p>{asana.category}</p>

              <p>{asana.level}</p>

              <p>{asana.duration}</p>

              <button>View Details</button>

            </div>
          ))
        ) : (
          <p className="no-results">
            No Yoga Asanas Found 😔
          </p>
        )}

      </div>

    </div>
  );
}

export default SearchResults;