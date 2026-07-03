import "./SearchBar.css";
import { FiSearch } from "react-icons/fi";

function SearchBar({ searchTerm, setSearchTerm }) {
  return (
    <section className="search-section">
      <div className="search-container">
        <h2>Find Your Perfect Yoga Asana</h2>
        <p>
          Search from our collection of yoga poses and begin your wellness
          journey.
        </p>

        <div className="search-box">
          <FiSearch className="search-icon" />

          <input
            type="text"
            placeholder="Search yoga poses..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
        </div>
      </div>
    </section>
  );
}



export default SearchBar;
