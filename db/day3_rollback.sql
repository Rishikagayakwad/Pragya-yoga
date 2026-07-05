-- =====================================================================
-- Pragya Yoga Verse — Week 3 Day 3
-- ROLLBACK SCRIPT — only run this if you need to undo the Day 3 insert.
--
-- IMPORTANT:
-- - If day3_migration_and_inserts.sql failed midway, PostgreSQL already
--   rolled it back automatically (it was wrapped in BEGIN...COMMIT).
--   You only need this script if the insert SUCCEEDED and you now want
--   to manually remove AS031-AS040 for some other reason.
-- - This does NOT remove the `duration` column itself, since AS001-AS030
--   now depend on it too. See the optional final section if you truly
--   need to remove the column as well.
-- =====================================================================

BEGIN;

-- Deleting from asanas cascades automatically to benefits, precautions,
-- and chakra_information because those tables were defined with
-- ON DELETE CASCADE for their asana_id foreign key. Deleting the
-- parent row is sufficient — no need to delete from child tables first.
DELETE FROM asanas
WHERE asana_id BETWEEN 'AS031' AND 'AS040';

COMMIT;

-- Verify cleanup:
-- SELECT COUNT(*) FROM asanas;              -- should return 30
-- SELECT COUNT(*) FROM benefits WHERE asana_id BETWEEN 'AS031' AND 'AS040';      -- should return 0
-- SELECT COUNT(*) FROM precautions WHERE asana_id BETWEEN 'AS031' AND 'AS040';   -- should return 0
-- SELECT COUNT(*) FROM chakra_information WHERE asana_id BETWEEN 'AS031' AND 'AS040'; -- should return 0


-- ---------------------------------------------------------------------
-- OPTIONAL — only if you also need to remove the duration column entirely
-- (e.g. the whole Day 3 Duration requirement is being reverted, not just
-- the new rows). Do NOT run this if AS001-AS030 duration values should stay.
-- ---------------------------------------------------------------------
-- ALTER TABLE asanas DROP COLUMN IF EXISTS duration;
