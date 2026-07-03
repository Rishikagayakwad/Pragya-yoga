import tree from "../assets/asanas/tree.png";
import lotus from "../assets/asanas/lotus.png";
import cobra from "../assets/asanas/cobra.png";
import warrior from "../assets/asanas/warrior.png";
import bridge from "../assets/asanas/bridge.png";
import triangle from "../assets/asanas/triangle.png";

const asanas = [
  {
    id: 1,
    name: "Tree Pose",
    category: "Standing",
    level: "Beginner",
    duration: "30 sec",
    image: tree,
  },
  {
    id: 2,
    name: "Lotus Pose",
    category: "Meditation",
    level: "Beginner",
    duration: "5 min",
    image: lotus,
  },
  {
    id: 3,
    name: "Cobra Pose",
    category: "Backbend",
    level: "Intermediate",
    duration: "45 sec",
    image: cobra,
  },
  {
    id: 4,
    name: "Warrior Pose",
    category: "Standing",
    level: "Intermediate",
    duration: "60 sec",
    image: warrior,
  },
  {
    id: 5,
    name: "Bridge Pose",
    category: "Backbend",
    level: "Advanced",
    duration: "40 sec",
    image: bridge,
  },
  {
    id: 6,
    name: "Triangle Pose",
    category: "Standing",
    level: "Beginner",
    duration: "45 sec",
    image: triangle,
  },
];

export default asanas;