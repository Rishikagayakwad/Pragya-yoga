import Navbar from "../components/Navbar";
import Hero from "../components/Hero";
import SearchBar from "../components/SearchBar";
import Categories from "../components/Categories";
import FeaturedAsanas from "../components/FeaturedAsanas";
import Footer from "../components/Footer";

function Home() {
  return (
    <>
      
      <Hero />
      <SearchBar />
      <Categories />
      <FeaturedAsanas />
      <Footer />
    </>
  );
}

export default Home;

