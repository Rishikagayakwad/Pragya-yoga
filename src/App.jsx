import { BrowserRouter, Routes, Route } from "react-router-dom";

import Navbar from "./components/Navbar";

import Home from "./pages/Home";
import Search from "./pages/Search";
import About from "./pages/About";
import Contact from "./pages/Contact";
import Login from "./pages/Login";

import Categories from "./pages/Categories";

import AsanaDetails from "./pages/AsanaDetails";
import { useTheme } from "./context/ThemeContext";

function AppContent() {

  const { darkMode } = useTheme();

  return (

    <div className={darkMode ? "app dark" : "app"}>

      <Navbar />

      <Routes>
        {/* routes */}
      </Routes>

    </div>

  );

}
function App() {
  return (
    <BrowserRouter>

      <Navbar />

      <Routes>

        <Route path="/" element={<Home />} />

        <Route path="/search" element={<Search />} />

        <Route path="/categories" element={<Categories />} />

        <Route path="/about" element={<About />} />

        <Route path="/contact" element={<Contact />} />

        <Route path="/login" element={<Login />} />

        <Route path="/asana/:id" element={<AsanaDetails />} />

      </Routes>

    </BrowserRouter>
  );
}

export default App;