import { Canvas } from "@react-three/fiber";
import { OrbitControls } from "@react-three/drei";
import { Suspense } from "react";
import YogaModel from "./YogaModel";
import "./ModelViewer.css";

function ModelViewer({ modelPath }) {
  return (
    <section className="model-section">
      <h2>3D Yoga Model</h2>
      <div className="viewer">
        <Canvas frameloop="demand" camera={{ position: [0, 1, 4], fov: 50 }}>
          <ambientLight intensity={0.6} />
          <directionalLight position={[5, 5, 5]} intensity={1} />
          <Suspense fallback={null}>
            <YogaModel modelPath={modelPath} />
          </Suspense>
          <OrbitControls />
        </Canvas>
      </div>
    </section>
  );
}

export default ModelViewer;