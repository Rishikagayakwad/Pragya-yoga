import lotus from "../assets/asanas/lotus.png";
import tree from "../assets/asanas/tree.png";
import cobra from "../assets/asanas/cobra.png";

const asanas = [
  {
    id: 1,
    slug: "lotus",
    name: "Lotus Pose",
    image: lotus,
    category: "Meditation",
    level: "Beginner",
    duration: "5 min",

    overview:
      "Lotus Pose (Padmasana) is a classic seated yoga pose that promotes meditation and relaxation.",

    benefits: [
      "Improves flexibility",
      "Calms the mind",
      "Improves posture",
      "Enhances concentration",
    ],

    steps: [
      "Sit on the mat.",
      "Cross your legs comfortably.",
      "Place each foot on the opposite thigh.",
      "Keep your spine straight.",
      "Take slow deep breaths.",
    ],

    precautions: [
      "Avoid if you have knee injuries.",
      "Do not force your hips.",
      "Practice slowly if you are a beginner.",
    ],

    model: "/models/yoga.glb",
  },

  {
    id: 2,
    slug: "tree",
    name: "Tree Pose",
    image: tree,
    category: "Balance",
    level: "Beginner",
    duration: "3 min",

    overview: "Tree Pose improves balance and concentration.",

    benefits: ["Balance", "Focus", "Strength"],

    steps: ["Stand", "Lift one leg", "Join palms"],

    precautions: ["Avoid if dizzy"],

    model: "/models/yoga.glb",
  },

  {
    id: 3,
    slug: "cobra",
    name: "Cobra Pose",
    image: cobra,
    category: "Backbend",
    level: "Intermediate",
    duration: "2 min",

    overview: "Cobra Pose strengthens the back.",

    benefits: ["Back Strength", "Flexibility"],

    steps: ["Lie down", "Lift chest"],

    precautions: ["Avoid during pregnancy"],

    model: "/models/yoga.glb",
  },
];

export default asanas;