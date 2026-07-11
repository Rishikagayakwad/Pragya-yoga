import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

import AsanaHero from "../components/AsanaHero";
import ModelViewer from "../components/ModelViewer";
import AsanaTabs from "../components/AsanaTabs";
import RelatedAsanas from "../components/RelatedAsanas";

import { getAsanaBySlug } from "../services/api";

// Day 5: fetches real data from the backend instead of the static
// src/data/asanas.js file. Loading/error/not-found states are handled
// explicitly since network requests can fail in ways a static import never did.
function AsanaDetails() {
  const { id } = useParams();

  const [asana, setAsana] = useState(null);
  const [status, setStatus] = useState("loading"); // "loading" | "ready" | "not-found" | "error"

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
      <>
        <Navbar />
        <div style={{ padding: "120px", textAlign: "center" }}>
          <h1>Loading...</h1>
        </div>
        <Footer />
      </>
    );
  }

  if (status === "not-found") {
    return (
      <>
        <Navbar />
        <div style={{ padding: "120px", textAlign: "center" }}>
          <h1>Asana Not Found</h1>
        </div>
        <Footer />
      </>
    );
  }

  if (status === "error") {
    return (
      <>
        <Navbar />
        <div style={{ padding: "120px", textAlign: "center" }}>
          <h1>Something went wrong</h1>
          <p>Could not load this asana. Please check that the backend server is running.</p>
        </div>
        <Footer />
      </>
    );
  }

  return (
    <>
      <Navbar />

      <AsanaHero asana={asana} />

      {/* TODO (Day 6): Asanas table has no per-asana model path yet, so all
          asanas share the Day 4 placeholder model. Swap in real per-asana
          models once sourced. */}
      <ModelViewer modelPath="/models/tree-pose-real.glb" />

      <AsanaTabs asana={asana} />

      {/* RelatedAsanas is intentionally left on its existing hardcoded
          content for now - out of scope for Day 5, to be migrated in the
          Day 6 integration sprint. */}
      <RelatedAsanas current={asana.slug} />

      <Footer />
    </>
  );
}

export default AsanaDetails;
