import tree from "../assets/asanas/tree.jpg";
import cobra from "../assets/asanas/cobra.jpg";
import lotus from "../assets/asanas/lotus.jpg";
import warrior from "../assets/asanas/warrior.jpg";
import bridge from "../assets/asanas/bridge.jpg";
import triangle from "../assets/asanas/triangle.jpg";

const asanas = [
  {
    id: 1,
    name: "Tree Pose",
    category: "Standing",
    level: "Beginner",
    duration: "30 sec",
    image: tree
  },
  {
    id: 2,
    name: "Cobra Pose",
    category: "Backbend",
    level: "Intermediate",
    duration: "45 sec",
    image: cobra
  },
  {
    id: 3,
    name: "Lotus Pose",
    category: "Meditation",
    level: "Beginner",
    duration: "2 min",
    image: lotus
  },
  {
    id: 4,
    name: "Warrior Pose",
    category: "Standing",
    level: "Intermediate",
    duration: "1 min",
    image: warrior
  },
  {
    id: 5,
    name: "Bridge Pose",
    category: "Backbend",
    level: "Advanced",
    duration: "45 sec",
    image: bridge
  },
  {
    id: 6,
    name: "Triangle Pose",
    category: "Standing",
    level: "Beginner",
    duration: "30 sec",
    image: triangle
  }
];

export default asanas;