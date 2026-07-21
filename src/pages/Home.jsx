import { useState } from "react";
import { useNavigate } from "react-router-dom";
import Navbar from "../components/Navbar";
import Hero from "../components/Hero";
import SearchBar from "../components/SearchBar";
import Categories from "../components/Categories";
import FeaturedAsanas from "../components/FeaturedAsanas";
import Footer from "../components/Footer";

function Home() {
  const [searchTerm, setSearchTerm] = useState("");
  const navigate = useNavigate();

  const handleSearchChange = (value) => {
    setSearchTerm(value);
    if (value.trim() !== "") {
      navigate("/search");
    }
  };

  return (
    <>
      
      <Hero />
      <SearchBar searchTerm={searchTerm} setSearchTerm={handleSearchChange} />
      <Categories />
      <FeaturedAsanas />
      <Footer />
    </>
  );
}

export default Home;

