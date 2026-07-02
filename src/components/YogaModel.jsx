import { useGLTF } from "@react-three/drei";

function YogaModel() {

    const { scene } = useGLTF("/models/yoga.glb");

    return (
        <primitive
            object={scene}
            scale={2}
            position={[0,-1,0]}
        />
    );
}

export default YogaModel;