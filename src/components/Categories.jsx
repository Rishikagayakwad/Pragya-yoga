import "./Categories.css";

function Categories() {

  const categories = [
    {
      title: "Beginner",
      icon: "🧘",
      description: "Easy yoga poses for beginners"
    },
    {
      title: "Standing",
      icon: "🧍",
      description: "Improve balance and strength"
    },
    {
      title: "Meditation",
      icon: "🪷",
      description: "Relax your mind and body"
    },
    {
      title: "Sitting",
      icon: "🪑",
      description: "Increase flexibility and posture"
    },
    {
      title: "Balance",
      icon: "⚖️",
      description: "Build focus and stability"
    },
    {
      title: "Backbend",
      icon: "🌉",
      description: "Improve spine flexibility"
    }
  ];

  return (
    <section className="categories">

      <h2>Explore Yoga Categories</h2>

      <p>
        Choose a category to begin your yoga journey.
      </p>

      <div className="category-grid">

        {categories.map((category, index) => (

          <div className="category-card" key={index}>

            <div className="icon">
              {category.icon}
            </div>

            <h3>{category.title}</h3>

            <p>{category.description}</p>

            <button>Explore</button>

          </div>

        ))}

      </div>

    </section>
  );
}

export default Categories;