import { BrowserRouter, Routes, Route } from "react-router-dom";

import Home from "./pages/Home";
import Search from "./pages/Search";
import About from "./pages/About";
import Contact from "./pages/Contact";
import Login from "./pages/Login";
import AsanaDetails from "./pages/AsanaDetails";
import Categories from "./pages/Categories";
function App() {
  return (
    <BrowserRouter>
      <Routes>

        <Route path="/" element={<Home />} />

        <Route path="/search" element={<Search />} />

        <Route path="/about" element={<About />} />

        <Route path="/contact" element={<Contact />} />

        <Route path="/login" element={<Login />} />

        <Route path="/asana/:id" element={<AsanaDetails />} />
        <Route  path="/categories" element={<Categories/>}
/>
      </Routes>
    </BrowserRouter>
  );
}

export default App;