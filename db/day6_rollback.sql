-- =====================================================================
-- PRAGYA YOGA VERSE — DAY 6 ROLLBACK
-- Removes AS041-AS050 and their related Benefits/Precautions/
-- Chakra_Information rows, restoring the database to its 40-asana
-- Day 5 state.
-- =====================================================================

BEGIN;

DELETE FROM Chakra_Information WHERE asana_id BETWEEN 'AS041' AND 'AS050';
DELETE FROM Precautions WHERE asana_id BETWEEN 'AS041' AND 'AS050';
DELETE FROM Benefits WHERE asana_id BETWEEN 'AS041' AND 'AS050';
DELETE FROM Asanas WHERE asana_id BETWEEN 'AS041' AND 'AS050';

COMMIT;
