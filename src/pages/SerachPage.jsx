import { useState } from "react";
import SearchBar from "../components/SearchBar";
import Filter from "../components/Filter";
import SearchResults from "../components/SearchResults";
import asanas from "../data/asanas";

function SearchPage() {
  const [searchTerm, setSearchTerm] = useState("");

  const filteredAsanas = asanas.filter((asana) =>
    asana.name.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="search-page">
      <SearchBar
        searchTerm={searchTerm}
        setSearchTerm={setSearchTerm}
      />

      <Filter />

      <SearchResults asanas={filteredAsanas} />
    </div>
  );
}


export default SearchPage;