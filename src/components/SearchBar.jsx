import "./SearchBar.css";

function SearchBar() {
  return (
    <section className="search-section">

      <h2>Find Your Perfect Yoga Asana</h2>

      <p>
        Search by name, category, or difficulty level.
      </p>

      <div className="search-box">

        <input
          type="text"
          placeholder="🔍 Search Yoga Asana..."
        />

        <select>
          <option>All Categories</option>
          <option>Standing</option>
          <option>Sitting</option>
          <option>Balance</option>
          <option>Meditation</option>
          <option>Backbend</option>
        </select>

        <select>
          <option>Difficulty</option>
          <option>Beginner</option>
          <option>Intermediate</option>
          <option>Advanced</option>
        </select>

        <button>
          Search
        </button>

      </div>

    </section>
  );
}

export default SearchBar;