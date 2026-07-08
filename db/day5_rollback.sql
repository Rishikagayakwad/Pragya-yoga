-- =====================================================================
-- PRAGYA YOGA VERSE — DAY 5 ROLLBACK
-- Reverses day5_migration.sql: drops beginner_tips and slug columns,
-- and clears the AI-generated common_mistakes content that was added.
-- Does NOT touch Benefits/Precautions/Chakra_Information - those are
-- untouched by the Day 5 migration.
-- =====================================================================

BEGIN;

DROP INDEX IF EXISTS idx_asanas_slug;
ALTER TABLE Asanas DROP CONSTRAINT IF EXISTS uq_asanas_slug;
ALTER TABLE Asanas DROP COLUMN IF EXISTS slug;
ALTER TABLE Asanas DROP COLUMN IF EXISTS beginner_tips;

-- Re-null common_mistakes to restore the pre-Day-5 state (it was NULL
-- for all 40 rows before this migration ran)
UPDATE Asanas SET common_mistakes = NULL;

COMMIT;
