import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

import Footer from "../components/Footer";

import AsanaHero from "../components/AsanaHero";
import ModelViewer from "../components/ModelViewer";
import AsanaTabs from "../components/AsanaTabs";
import RelatedAsanas from "../components/RelatedAsanas";

import { getAsanaBySlug } from "../services/api";

function AsanaDetails() {
  const { id } = useParams();

  const [asana, setAsana] = useState(null);
  const [status, setStatus] = useState("loading");

  useEffect(() => {
    let cancelled = false;

    setStatus("loading");
    setAsana(null);

    getAsanaBySlug(id)
      .then((data) => {
        if (cancelled) return;
        if (!data) {
          setStatus("not-found");
        } else {
          setAsana(data);
          setStatus("ready");
        }
      })
      .catch(() => {
        if (!cancelled) setStatus("error");
      });

    return () => {
      cancelled = true;
    };
  }, [id]);

  if (status === "loading") {
    return (
      <div style={{ padding: "120px", textAlign: "center" }}>
        <h1>Loading...</h1>
      </div>
    );
  }

  if (status === "not-found") {
    return (
      <div style={{ padding: "120px", textAlign: "center" }}>
        <h1>Asana Not Found</h1>
      </div>
    );
  }

  if (status === "error") {
    return (
      <div style={{ padding: "120px", textAlign: "center" }}>
        <h1>Something went wrong</h1>
        <p>Could not load this asana. Please check that the backend server is running.</p>
      </div>
    );
  }

  return (
    <>
      <AsanaHero asana={asana} />

      <ModelViewer
        modelPath={asana.slug === "tree" ? "/models/tree-pose-real.glb" : undefined}
      />

      <AsanaTabs asana={asana} />

      <RelatedAsanas current={asana.slug} />

      <Footer />
    </>
  );
}

export default AsanaDetails;