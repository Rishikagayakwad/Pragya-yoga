import { useGLTF } from "@react-three/drei";

// Default path points to today's placeholder model.
// To use a real asana model later, just pass a different modelPath prop
// wherever <YogaModel /> is used — no changes needed in this file.
const DEFAULT_MODEL_PATH = "/models/placeholder.glb";

function YogaModel({ modelPath = DEFAULT_MODEL_PATH, scale = 2, position = [0, -1, 0] }) {
  const { scene } = useGLTF(modelPath);

  return (
    <primitive
      object={scene}
      scale={scale}
      position={position}
    />
  );
}

export default YogaModel;