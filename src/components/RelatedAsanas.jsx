import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "./RelatedAsanas.css";
import { getAllAsanas } from "../services/api";
import lotus from "../assets/asanas/lotus.png";

function RelatedAsanas({ current }) {
  const [asanas, setAsanas] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    getAllAsanas().then((data) => {
      const others = (data || []).filter((asana) => asana.slug !== current);
      setAsanas(others.slice(0, 3));
    });
  }, [current]);

  return (
    <section className="related-asanas">
      <h2>Related Asanas</h2>

      <div className="related-grid">
        {asanas.map((asana) => (
          <div
            className="related-card"
            key={asana.asana_id}
            onClick={() => navigate(`/asana/${asana.slug}`)}
          >
            <img src={lotus} alt={asana.english_name} />
            <h3>{asana.english_name}</h3>
            <p>{asana.difficulty}</p>
          </div>
        ))}
      </div>
    </section>
  );
}

export default RelatedAsanas;