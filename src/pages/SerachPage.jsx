import { useState, useEffect } from "react";
import SearchBar from "../components/SearchBar";
import Filter from "../components/Filter";
import SearchResults from "../components/SearchResults";
import { getAllAsanas, searchAsanas } from "../services/api";

function SearchPage() {
  const [searchTerm, setSearchTerm] = useState("");
  const [asanas, setAsanas] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    getAllAsanas()
      .then((data) => setAsanas(data || []))
      .finally(() => setLoading(false));
  }, []);

  useEffect(() => {
    if (searchTerm.trim() === "") {
      getAllAsanas().then((data) => setAsanas(data || []));
    } else {
      searchAsanas(searchTerm).then((data) => setAsanas(data || []));
    }
  }, [searchTerm]);

  return (
    <div className="search-page">
      <SearchBar
        searchTerm={searchTerm}
        setSearchTerm={setSearchTerm}
      />

      <Filter />

      {loading ? <p>Loading asanas...</p> : <SearchResults asanas={asanas} />}
    </div>
  );
}

export default SearchPage;