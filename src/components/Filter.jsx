import "./Filter.css";

function Filter({ category, setCategory, level, setLevel }) {
  return (
    <div className="filter-container">

      {/* Category Filter */}
      <select
        value={category}
        onChange={(e) => setCategory(e.target.value)}
      >
        <option value="All">All Categories</option>
        <option value="Standing">Standing</option>
        <option value="Sitting">Sitting</option>
        <option value="Meditation">Meditation</option>
        <option value="Backbend">Backbend</option>
        <option value="Balance">Balance</option>
      </select>

      {/* Level Filter */}
      <select
        value={level}
        onChange={(e) => setLevel(e.target.value)}
      >
        <option value="All">All Levels</option>
        <option value="Beginner">Beginner</option>
        <option value="Intermediate">Intermediate</option>
        <option value="Advanced">Advanced</option>
      </select>

    </div>
  );
}

export default Filter;