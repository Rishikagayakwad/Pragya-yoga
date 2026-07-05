-- =====================================================================
-- Pragya Yoga Verse — Week 3 Day 3
-- Verification queries — run these AFTER day3_migration_and_inserts.sql
-- =====================================================================

-- 1. Total row count in asanas — expect 40 (30 existing + 10 new)
SELECT COUNT(*) AS total_asanas FROM asanas;

-- 2. Confirm no asana is missing a duration value — expect 0 rows returned
SELECT asana_id, sanskrit_name
FROM asanas
WHERE duration IS NULL OR duration = '';

-- 3. Confirm AS031-AS040 specifically were inserted correctly
SELECT asana_id, sanskrit_name, english_name, difficulty, duration, category_id
FROM asanas
WHERE asana_id BETWEEN 'AS031' AND 'AS040'
ORDER BY asana_id;

-- 4. Confirm foreign key integrity: every asana's category_id exists in categories
-- expect 0 rows returned (0 orphans)
SELECT a.asana_id, a.category_id
FROM asanas a
LEFT JOIN categories c ON a.category_id = c.category_id
WHERE c.category_id IS NULL;

-- 5. Benefits: expect 50 new rows for AS031-AS040 (5 each)
SELECT asana_id, COUNT(*) AS benefit_count
FROM benefits
WHERE asana_id BETWEEN 'AS031' AND 'AS040'
GROUP BY asana_id
ORDER BY asana_id;

-- 6. Precautions: expect 40 new rows for AS031-AS040 (4 each)
SELECT asana_id, COUNT(*) AS precaution_count
FROM precautions
WHERE asana_id BETWEEN 'AS031' AND 'AS040'
GROUP BY asana_id
ORDER BY asana_id;

-- 7. Chakra: expect exactly 1 row per asana for AS031-AS040 (10 rows total)
SELECT asana_id, COUNT(*) AS chakra_count
FROM chakra_information
WHERE asana_id BETWEEN 'AS031' AND 'AS040'
GROUP BY asana_id
ORDER BY asana_id;

-- 8. Full join sanity check — one row per asana with all related data joined
-- Confirms relationships resolve correctly end-to-end (visually inspect output)
SELECT
    a.asana_id,
    a.sanskrit_name,
    a.english_name,
    a.difficulty,
    a.duration,
    c.category_name,
    ch.chakra_name,
    COUNT(DISTINCT b.benefit_id) AS benefit_count,
    COUNT(DISTINCT p.precaution_id) AS precaution_count
FROM asanas a
JOIN categories c ON a.category_id = c.category_id
LEFT JOIN chakra_information ch ON a.asana_id = ch.asana_id
LEFT JOIN benefits b ON a.asana_id = b.asana_id
LEFT JOIN precautions p ON a.asana_id = p.asana_id
WHERE a.asana_id BETWEEN 'AS031' AND 'AS040'
GROUP BY a.asana_id, a.sanskrit_name, a.english_name, a.difficulty, a.duration, c.category_name, ch.chakra_name
ORDER BY a.asana_id;

-- 9. Overall table totals (sanity check against expected counts below)
SELECT
    (SELECT COUNT(*) FROM asanas)             AS total_asanas,
    (SELECT COUNT(*) FROM benefits)           AS total_benefits,
    (SELECT COUNT(*) FROM precautions)        AS total_precautions,
    (SELECT COUNT(*) FROM chakra_information) AS total_chakra_rows;
