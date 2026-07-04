import "./SearchBar.css";

function SearchBar({ searchTerm, setSearchTerm }) {
  return (
    <section className="search-section">

      <div className="search-content">

        <h1>Search Yoga Asanas</h1>

        <p>
          Discover the perfect yoga pose for your wellness journey.
        </p>

        <div className="search-box">

          <span className="search-icon">🔍</span>

          <input
            type="text"
            placeholder="Search yoga pose..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />

        </div>

      </div>

    </section>
  );
}

export default SearchBar;