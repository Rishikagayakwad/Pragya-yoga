// Centralized API helper. Keeping the base URL and fetch/error handling in
// one place means Day 6 (wiring FeaturedAsanas, Search, Categories, etc.)
// can reuse these same functions instead of duplicating fetch logic.

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "http://localhost:5000/api";

async function fetchJson(path) {
  const response = await fetch(`${API_BASE_URL}${path}`);

  if (!response.ok) {
    if (response.status === 404) {
      return null;
    }
    throw new Error(`API request failed: ${response.status}`);
  }

  return response.json();
}

// GET /api/asanas/:slug — full asana detail including AI content
// (beginner_tips, common_mistakes) and related benefits/safety_notes/chakras.
export function getAsanaBySlug(slug) {
  return fetchJson(`/asanas/${slug}`);
}

// GET /api/asanas/featured — curated set of poses with real local images
export function getFeaturedAsanas() {
  return fetchJson("/asanas/featured");
}

// TODO: add getAllAsanas(), searchAsanas(), getAsanasByCategory() here
// once Search/Categories are migrated off the static src/data/asanas.js file.