import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { getAllCategories } from "../services/api";
import "./Categories.css";

const iconMap = {
  Standing: "🧍",
  Sitting: "🪑",
  Balance: "⚖️",
  Twisting: "🌀",
  "Forward Bend": "🙇",
  Meditative: "🪷",
};

function Categories() {
  const [categories, setCategories] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    getAllCategories().then((data) => {
      if (data) setCategories(data);
    });
  }, []);

  return (
    <section id="categories" className="categories">
      <h2>Explore Yoga Categories</h2>

      <p>Choose a category to begin your yoga journey.</p>

      <div className="category-grid">
        {categories.map((category) => (
          <div className="category-card" key={category.category_id}>
            <div className="icon">
              {iconMap[category.category_name] || "🧘"}
            </div>

            <h3>{category.category_name}</h3>

            <p>{category.description}</p>

            <button onClick={() => navigate(`/category/${category.category_id}`)}>
              Explore
            </button>
          </div>
        ))}
      </div>
    </section>
  );
}

export default Categories;