import { useState } from "react";
import { FaLeaf } from "react-icons/fa";
import { GiLotus } from "react-icons/gi";
import { MdHealthAndSafety } from "react-icons/md";
import "./AsanaTabs.css";

const TABS = [
  {
    key: "benefits",
    label: "Benefits",
    icon: <FaLeaf />,
  },
  {
    key: "beginnerTips",
    label: "Beginner Tips",
    icon: <GiLotus />,
  },
  {
    key: "commonMistakes",
    label: "Common Mistakes",
    icon: <MdHealthAndSafety />,
  },
  {
    key: "safetyNotes",
    label: "Safety Notes",
    icon: <MdHealthAndSafety />,
  },
];

function AsanaTabs({ asana }) {
  const [activeTab, setActiveTab] = useState("benefits");

  if (!asana) return null;

  const content = {
    benefits: asana.benefits,
    beginnerTips: asana.beginner_tips,
    commonMistakes: asana.common_mistakes,
    safetyNotes: asana.safety_notes,
  };

  const renderPanel = () => {
    const value = content[activeTab];

    if (!value || (Array.isArray(value) && value.length === 0)) {
      return (
        <p className="tab-empty">
          No content available for this section yet.
        </p>
      );
    }

    if (Array.isArray(value)) {
      return (
        <ul className="tab-list">
          {value.map((item, index) => (
            <li key={index}>{item}</li>
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
            className={
              activeTab === tab.key ? "tab-button active" : "tab-button"
            }
            onClick={() => setActiveTab(tab.key)}
          >
            {tab.icon}
            <span>{tab.label}</span>
          </button>
        ))}
      </div>

      <div className="tab-panel">{renderPanel()}</div>
    </section>
  );
}

export default AsanaTabs;