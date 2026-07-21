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

// GET /api/asanas — full list of all asanas
export function getAllAsanas() {
  return fetchJson("/asanas");
}

// GET /api/search?q=... — search asanas by name
export function searchAsanas(query) {
  return fetchJson(`/search?q=${encodeURIComponent(query)}`);
}
// GET /api/categories — all categories
export function getAllCategories() {
  return fetchJson("/categories");
}

// GET /api/categories/:id/asanas — asanas filtered by category
export function getCategoryAsanas(id) {
  return fetchJson(`/categories/${id}/asanas`);
}