import { useState } from "react";
import "./AsanaTabs.css";
<<<<<<< HEAD

// Day 5 deliverable: renders AI-generated content stored in Postgres.
// - beginnerTips  -> new `beginner_tips` column (AI-generated, stored offline)
// - commonMistakes -> existing `common_mistakes` column (AI-generated, stored offline)
// - safetyNotes   -> reuses the existing Precautions table content, shown
//                    under the "Safety Notes" heading. No separate
//                    safety_notes column exists, by design, to avoid
//                    duplicating the same data in two places.
//
// TODO (Day 6): add a "Benefits" tab once the homepage/search pages are
// migrated to the real API too - the data (asana.benefits) is already
// returned by GET /api/asanas/:slug and unused here for now.
const TABS = [
  { key: "beginnerTips", label: "Beginner Tips" },
  { key: "commonMistakes", label: "Common Mistakes" },
  { key: "safetyNotes", label: "Safety Notes" },
];

function AsanaTabs({ asana }) {
  const [activeTab, setActiveTab] = useState(TABS[0].key);

  if (!asana) {
    return null;
  }

  const content = {
    beginnerTips: asana.beginner_tips,
    commonMistakes: asana.common_mistakes,
    // safety_notes comes back from the API as an array (one row per
    // Precautions entry for this asana)
    safetyNotes: asana.safety_notes,
  };

  const renderPanel = () => {
    const value = content[activeTab];

    if (!value || (Array.isArray(value) && value.length === 0)) {
      return <p className="tab-empty">No content available for this section yet.</p>;
    }

    if (Array.isArray(value)) {
      return (
        <ul className="tab-list">
          {value.map((item, i) => (
            <li key={i}>{item}</li>
          ))}
        </ul>
      );
    }

    return <p className="tab-text">{value}</p>;
  };

  return (
    <section className="asana-tabs">
      <div className="tab-buttons">
        {TABS.map((tab) => (
          <button
            key={tab.key}
            className={activeTab === tab.key ? "tab-button active" : "tab-button"}
            onClick={() => setActiveTab(tab.key)}
          >
            {tab.label}
          </button>
        ))}
      </div>

      <div className="tab-panel">{renderPanel()}</div>
    </section>
  );
}

export default AsanaTabs;
=======
import { FaLeaf } from "react-icons/fa";
import { GiLotus } from "react-icons/gi";
import { MdHealthAndSafety } from "react-icons/md";
export default function AsanaTabs() {
  return (
    <section className="asana-info-section">

      {/* Benefits */}

      <div className="info-card benefits">

        <h2>🌿 Benefits</h2>

        <ul>
          <li>Improves posture</li>
          <li>Increases flexibility</li>
          <li>Enhances concentration</li>
          <li>Reduces stress & anxiety</li>
          <li>Promotes inner peace</li>
          <li>Improves breathing</li>
        </ul>

      </div>

      {/* Steps */}

      <div className="info-card steps">

        <h2>📋 Steps</h2>

        <ol>
          <li>Sit comfortably on the yoga mat.</li>
          <li>Straighten your spine.</li>
          <li>Fold the right leg.</li>
          <li>Fold the left leg.</li>
          <li>Place hands on knees.</li>
          <li>Close eyes and breathe deeply.</li>
        </ol>

      </div>

      {/* Precautions */}

      <div className="info-card precautions">

        <h2>⚠️ Precautions</h2>

        <ul>
          <li>Avoid if you have knee injuries.</li>
          <li>Do not force your legs.</li>
          <li>Use a yoga cushion if required.</li>
          <li>Practice under supervision.</li>
          <li>Stop immediately if pain occurs.</li>
        </ul>

      </div>

    </section>
  );
}
>>>>>>> 863bd3b (Updated project files)
