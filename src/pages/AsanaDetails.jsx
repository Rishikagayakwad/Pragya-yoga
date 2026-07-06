import { useParams } from "react-router-dom";

import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

import AsanaHero from "../components/AsanaHero";
import ModelViewer from "../components/ModelViewer";
import AsanaTabs from "../components/AsanaTabs";
import RelatedAsanas from "../components/RelatedAsanas";

import asanas from "../data/asanas";

function AsanaDetails() {
  const { id } = useParams();

  const asana = asanas.find((item) => item.slug === id);

  if (!asana) {
    return (
      <>
        <Navbar />

        <div
          style={{
            padding: "120px",
            textAlign: "center",
          }}
        >
          <h1>Asana Not Found</h1>
        </div>

        <Footer />
      </>
    );
  }

  return (
    <>
      <Navbar />

      <AsanaHero asana={asana} />

<ModelViewer modelPath={asana.model} />
      <AsanaTabs asana={asana} />

      <RelatedAsanas current={asana.slug} />

      <Footer />
    </>
  );
}

export default AsanaDetails;