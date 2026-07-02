import { Canvas } from "@react-three/fiber";
import { OrbitControls, Environment } from "@react-three/drei";
import YogaModel from "./YogaModel";

function HeroCanvas() {

    return (

        <Canvas camera={{ position: [0,1,5], fov:45 }}>

            <ambientLight intensity={1.5} />

            <directionalLight
                position={[5,5,5]}
                intensity={2}
            />

            <Environment preset="city" />

            <YogaModel />

            <OrbitControls
                enableZoom={false}
                autoRotate
                autoRotateSpeed={2}
            />

        </Canvas>

    );

}

export default HeroCanvas;