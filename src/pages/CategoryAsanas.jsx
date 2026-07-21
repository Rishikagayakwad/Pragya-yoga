import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { getCategoryAsanas, getAllCategories } from "../services/api";
import SearchResults from "../components/SearchResults";

function CategoryAsanas() {
  const { id } = useParams();
  const [asanas, setAsanas] = useState([]);
  const [categoryName, setCategoryName] = useState("Category");

  useEffect(() => {
    getCategoryAsanas(id).then((data) => {
      setAsanas(data || []);
    });

    getAllCategories().then((data) => {
      const match = (data || []).find(
        (c) => String(c.category_id) === String(id)
      );
      if (match) setCategoryName(match.category_name);
    });
  }, [id]);

  return <SearchResults asanas={asanas} title={categoryName} />;
}

export default CategoryAsanas;