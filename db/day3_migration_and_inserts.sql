-- =====================================================================
-- Pragya Yoga Verse — Week 3 Day 3
-- Migration: add `duration` column + backfill AS001-AS030
-- Insert: AS031-AS040 into asanas, benefits, precautions, chakra_information
-- Safe to run top to bottom. Wrapped in a transaction so it's all-or-nothing.
-- =====================================================================

BEGIN;

-- ---------------------------------------------------------------------
-- STEP 1: Migration — add `duration` column (only if it doesn't exist)
-- ---------------------------------------------------------------------
-- IF NOT EXISTS makes this safe to re-run without erroring if the
-- column was already added in a previous attempt.
ALTER TABLE asanas
    ADD COLUMN IF NOT EXISTS duration VARCHAR(50);

-- ---------------------------------------------------------------------
-- STEP 2: Backfill duration for AS001-AS030 (already-existing rows)
-- These values match the workbook exactly, derived from difficulty +
-- pose type (symmetric vs one-sided) as documented in the workbook QA.
-- ---------------------------------------------------------------------
UPDATE asanas SET duration = CASE asana_id
    WHEN 'AS001' THEN 'Hold for 30-60 seconds'
    WHEN 'AS002' THEN 'Hold for 60-90 seconds'
    WHEN 'AS003' THEN 'Hold for 60-90 seconds'
    WHEN 'AS004' THEN 'Hold for 60-90 seconds'
    WHEN 'AS005' THEN 'Hold for 60-90 seconds'
    WHEN 'AS006' THEN 'Hold for 30-45 seconds'
    WHEN 'AS007' THEN 'Hold for 30-60 seconds'
    WHEN 'AS008' THEN 'Hold for 15-30 seconds'
    WHEN 'AS009' THEN 'Hold for 20-30 seconds'
    WHEN 'AS010' THEN 'Hold for 20-30 seconds'
    WHEN 'AS011' THEN 'Hold for 30-45 seconds'
    WHEN 'AS012' THEN 'Hold for 20-30 seconds'
    WHEN 'AS013' THEN 'Hold for 20-30 seconds'
    WHEN 'AS014' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS015' THEN 'Hold for 30-45 seconds per side'
    WHEN 'AS016' THEN 'Hold for 30-45 seconds per side'
    WHEN 'AS017' THEN 'Hold for 30-45 seconds per side'
    WHEN 'AS018' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS019' THEN 'Hold for 30-45 seconds per side'
    WHEN 'AS020' THEN 'Hold for 20-30 seconds per side'
    WHEN 'AS021' THEN 'Hold for 20-30 seconds per side'
    WHEN 'AS022' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS023' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS024' THEN 'Hold for 10-15 seconds per side'
    WHEN 'AS025' THEN 'Hold for 30-45 seconds'
    WHEN 'AS026' THEN 'Hold for 20-30 seconds per side'
    WHEN 'AS027' THEN 'Hold for 10-15 seconds per side'
    WHEN 'AS028' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS029' THEN 'Hold for 15-20 seconds per side'
    WHEN 'AS030' THEN 'Hold for 20-30 seconds'
END
WHERE asana_id IN (
    'AS001','AS002','AS003','AS004','AS005','AS006','AS007','AS008','AS009','AS010',
    'AS011','AS012','AS013','AS014','AS015','AS016','AS017','AS018','AS019','AS020',
    'AS021','AS022','AS023','AS024','AS025','AS026','AS027','AS028','AS029','AS030'
);

-- ---------------------------------------------------------------------
-- STEP 3: Insert AS031-AS040 into asanas
-- category_id mapping (as approved):
--   2 = Sitting, 5 = Balance, 6 = Twisting, 7 = Forward Bend
-- common_mistakes / variations are left NULL — no content for them yet,
-- consistent with how AS001-AS030 also leave these blank until populated.
-- ---------------------------------------------------------------------
INSERT INTO asanas
    (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration)
VALUES
('AS031', 5, 'Vrikshasana', 'Tree Pose', 'Beginner',
 'Vrikshasana is a standing balance posture that cultivates focus, steadiness, and grounding through the standing leg while opening the hips. It builds core stability and calm concentration.',
 '1. Stand with feet together to begin, grounding through both feet. 2. Shift the weight onto one foot and bend the opposite knee. 3. Place the sole of the bent foot on the inner calf or thigh, avoiding the knee. 4. Bring the palms together at the chest or extend the arms overhead. 5. Fix the gaze on a steady point and breathe evenly. 6. Hold the position for several breaths, staying grounded and steady. 7. Release by lowering the leg and returning to standing; repeat on the other side.',
 'Quadriceps, Calves, Ankles, Core, Hip Flexors',
 'Hold for 30-45 seconds per side'),

('AS032', 2, 'Parighasana', 'Gate Pose', 'Beginner',
 'Parighasana is a kneeling side-bending posture that stretches the sides of the torso while opening the ribcage and shoulders. It is often practiced to relieve tension along the waist and improve lateral flexibility.',
 '1. Kneel on the floor with the torso upright to begin. 2. Extend one leg out to the side with the foot flat on the floor. 3. Turn the extended foot forward and align the hips. 4. Reach the same-side arm overhead while bending the torso toward the extended leg. 5. Rest the opposite hand lightly on the extended leg for support. 6. Hold the position for several breaths, keeping the torso open. 7. Release by returning to upright kneeling; repeat on the other side.',
 'Obliques, Intercostals, Shoulders, Hip Flexors, Quadriceps',
 'Hold for 20-30 seconds per side'),

('AS033', 2, 'Baddha Konasana', 'Bound Angle Pose', 'Beginner',
 'Baddha Konasana is a seated hip-opening posture in which the soles of the feet are brought together, resembling a butterfly shape. It gently stretches the inner thighs and groin while promoting relaxation.',
 '1. Sit on the floor with the legs extended forward to begin. 2. Bend the knees and bring the soles of the feet together. 3. Draw the heels toward the pelvis while holding the feet. 4. Lengthen the spine and let the knees relax open. 5. Breathe evenly while releasing tension in the hips. 6. Hold the position for several breaths, staying relaxed. 7. Release by straightening both legs slowly.',
 'Adductors, Hip Flexors, Groin, Core, Erector Spinae',
 'Hold for 45-60 seconds'),

('AS034', 7, 'Upavistha Konasana', 'Wide-Angle Seated Forward Bend', 'Intermediate',
 'Upavistha Konasana is a wide-legged seated forward bend that deeply stretches the inner thighs and hamstrings. It encourages spinal lengthening while calming the nervous system.',
 '1. Sit on the floor with the legs extended forward to begin. 2. Open the legs wide to the sides, keeping them active. 3. Flex the feet and press the palms lightly onto the floor. 4. Hinge forward from the hips, lengthening the spine. 5. Walk the hands forward gradually, keeping the back long. 6. Hold the position for several breaths, releasing tension gradually. 7. Release by walking the hands back and closing the legs.',
 'Adductors, Hamstrings, Erector Spinae, Core, Calves',
 'Hold for 45-60 seconds'),

('AS035', 2, 'Agnistambhasana', 'Fire Log Pose', 'Intermediate',
 'Agnistambhasana is a seated hip-opening posture in which the shins are stacked one above the other, deeply targeting the outer hips. It builds patience and steadiness while releasing tension in the hip joints.',
 '1. Sit on the floor with the knees bent and feet flat to begin. 2. Stack one shin on top of the other, ankle beyond the opposite knee. 3. Flex both feet to protect the knee joints. 4. Lengthen the spine and rest the hands on the shins. 5. Breathe evenly while releasing tension in the hips. 6. Hold the position for several breaths, staying steady. 7. Release by carefully unstacking the legs; repeat on the other side.',
 'Glutes, Hip Flexors, Adductors, Core',
 'Hold for 30-45 seconds per side'),

('AS036', 7, 'Janu Sirsasana', 'Head-to-Knee Forward Bend', 'Beginner',
 'Janu Sirsasana is a seated forward bend in which one leg is folded while the other extends forward, deepening the stretch along the extended side. It calms the mind while lengthening the spine and hamstrings.',
 '1. Sit on the floor with both legs extended forward to begin. 2. Bend one knee and place the sole of the foot against the inner thigh. 3. Square the hips toward the extended leg. 4. Hinge forward from the hips, reaching toward the extended foot. 5. Lengthen the spine while folding gradually over the leg. 6. Hold the position for several breaths, relaxing the head and neck. 7. Release by rising slowly; repeat on the other side.',
 'Hamstrings, Calves, Erector Spinae, Hip Flexors',
 'Hold for 30-45 seconds per side'),

('AS037', 6, 'Parivrtta Janu Sirsasana', 'Revolved Head-to-Knee Pose', 'Intermediate',
 'Parivrtta Janu Sirsasana is a seated side-bending and twisting posture that stretches the entire side body while folding over an extended leg. It combines lateral flexion with a gentle spinal twist.',
 '1. Sit on the floor with one leg extended to the side to begin. 2. Bend the other knee and place the sole of the foot against the inner thigh. 3. Rotate the torso slightly and reach the same-side arm overhead. 4. Fold sideways over the extended leg, resting the opposite forearm on the leg or floor. 5. Turn the gaze upward and breathe evenly. 6. Hold the position for several breaths, staying open through the chest. 7. Release by rising slowly; repeat on the other side.',
 'Obliques, Hamstrings, Shoulders, Intercostals, Erector Spinae',
 'Hold for 30-45 seconds per side'),

('AS038', 7, 'Triang Mukhaikapada Paschimottanasana', 'Three-Limbed Forward Bend', 'Intermediate',
 'Triang Mukhaikapada Paschimottanasana is a seated forward bend in which one leg is folded backward while the other extends forward. It deepens hip and quadriceps flexibility while stretching the extended leg.',
 '1. Sit on the floor with both legs extended forward to begin. 2. Fold one knee back, placing the foot beside the hip with toes pointing back. 3. Keep the other leg extended forward, flexing the foot. 4. Square the hips and hinge forward over the extended leg. 5. Lengthen the spine while reaching toward the extended foot. 6. Hold the position for several breaths, relaxing gradually. 7. Release by rising slowly; repeat on the other side.',
 'Quadriceps, Hamstrings, Ankles, Erector Spinae',
 'Hold for 30-45 seconds per side'),

('AS039', 2, 'Krounchasana', 'Heron Pose', 'Intermediate',
 'Krounchasana is a seated posture in which one leg is lifted and held upright while the other remains folded, deeply stretching the hamstring of the extended leg. It builds flexibility, focus, and balance.',
 '1. Sit on the floor with one leg folded to the side to begin. 2. Bend the other knee toward the chest and hold the foot with both hands. 3. Extend the bent leg upward, straightening it gradually. 4. Lengthen the spine and draw the shoulders down. 5. Breathe evenly while holding the extended leg steady. 6. Hold the position for several breaths, staying focused. 7. Release by lowering the leg slowly; repeat on the other side.',
 'Hamstrings, Calves, Core, Shoulders',
 'Hold for 20-30 seconds per side'),

('AS040', 7, 'Paschimottanasana', 'Seated Forward Bend', 'Beginner',
 'Paschimottanasana is a seated forward bend that stretches the entire back body from the heels to the neck. It calms the nervous system while promoting introspection and relaxation.',
 '1. Sit on the floor with both legs extended forward to begin. 2. Flex the feet and lengthen the spine, lifting through the crown of the head. 3. Hinge forward from the hips, reaching toward the feet. 4. Hold the feet, ankles, or shins depending on flexibility. 5. Relax the head and neck while breathing evenly. 6. Hold the position for several breaths, releasing tension gradually. 7. Release by rising slowly, one vertebra at a time.',
 'Hamstrings, Calves, Erector Spinae, Shoulders',
 'Hold for 45-60 seconds');


-- ---------------------------------------------------------------------
-- STEP 4: Insert benefits (5 rows per asana x 10 asanas = 50 rows)
-- benefit_id is auto-generated (identity column) — do not specify it.
-- ---------------------------------------------------------------------
INSERT INTO benefits (asana_id, benefit) VALUES
('AS031', 'Improves balance and concentration'),
('AS031', 'Strengthens the standing leg, ankle, and foot'),
('AS031', 'Opens the hips and inner thighs'),
('AS031', 'Builds core stability'),
('AS031', 'Encourages calm, focused breathing'),

('AS032', 'Stretches the sides of the torso and waist'),
('AS032', 'Opens the shoulders and chest'),
('AS032', 'Improves lateral spinal flexibility'),
('AS032', 'Strengthens the kneeling leg and hip'),
('AS032', 'Encourages deep, expansive breathing'),

('AS033', 'Opens the hips and inner thighs'),
('AS033', 'Improves flexibility in the groin'),
('AS033', 'Calms the mind and reduces fatigue'),
('AS033', 'Stimulates circulation in the pelvic region'),
('AS033', 'Encourages steady, relaxed breathing'),

('AS034', 'Stretches the inner thighs and hamstrings'),
('AS034', 'Improves flexibility in the hips and spine'),
('AS034', 'Calms the nervous system'),
('AS034', 'Stimulates the abdominal organs'),
('AS034', 'Encourages steady, extended breathing'),

('AS035', 'Deeply opens the outer hips and glutes'),
('AS035', 'Improves flexibility in the hip joints'),
('AS035', 'Calms the mind through focused breathing'),
('AS035', 'Prepares the body for deeper seated postures'),
('AS035', 'Encourages patience and steadiness'),

('AS036', 'Stretches the hamstrings, calves, and spine'),
('AS036', 'Calms the nervous system and reduces stress'),
('AS036', 'Improves flexibility in the hips'),
('AS036', 'Stimulates the abdominal organs'),
('AS036', 'Encourages steady, relaxed breathing'),

('AS037', 'Stretches the side body, hamstrings, and shoulders'),
('AS037', 'Improves spinal flexibility and rotation'),
('AS037', 'Stimulates the abdominal organs'),
('AS037', 'Relieves tension along the waist'),
('AS037', 'Encourages deep, steady breathing'),

('AS038', 'Stretches the quadriceps, hamstrings, and ankles'),
('AS038', 'Improves flexibility in the hips and knees'),
('AS038', 'Stimulates the abdominal organs'),
('AS038', 'Calms the mind through forward folding'),
('AS038', 'Encourages steady, controlled breathing'),

('AS039', 'Deeply stretches the hamstrings and calves'),
('AS039', 'Improves flexibility in the hips and knees'),
('AS039', 'Builds focus and concentration'),
('AS039', 'Strengthens the core and arms'),
('AS039', 'Encourages steady, controlled breathing'),

('AS040', 'Stretches the hamstrings, calves, and spine'),
('AS040', 'Calms the nervous system and reduces stress'),
('AS040', 'Improves flexibility in the lower back'),
('AS040', 'Stimulates the abdominal organs'),
('AS040', 'Encourages relaxation and introspection');


-- ---------------------------------------------------------------------
-- STEP 5: Insert precautions (4 rows per asana x 10 asanas = 40 rows)
-- ---------------------------------------------------------------------
INSERT INTO precautions (asana_id, precaution) VALUES
('AS031', 'Avoid with acute knee, ankle, or hip injury'),
('AS031', 'Practice near a wall for extra support if balance is unsteady'),
('AS031', 'Keep the foot off the knee joint to protect it'),
('AS031', 'Stop if pain occurs in the standing leg or hip'),

('AS032', 'Avoid with acute knee or hip injury'),
('AS032', 'Place padding under the kneeling knee if sensitive'),
('AS032', 'Avoid with lower back injury'),
('AS032', 'Stop if strain occurs in the neck or shoulder'),

('AS033', 'Avoid with acute knee or groin injury'),
('AS033', 'Sit on a cushion if the hips are tight'),
('AS033', 'Avoid forcing the knees toward the floor'),
('AS033', 'Stop if pain occurs in the knees or hips'),

('AS034', 'Avoid with acute hamstring or groin injury'),
('AS034', 'Bend the knees slightly if the hamstrings are tight'),
('AS034', 'Avoid with lower back injury'),
('AS034', 'Stop if sharp pain occurs in the hips or knees'),

('AS035', 'Avoid with acute knee or hip injury'),
('AS035', 'Sit on a cushion to elevate the hips if needed'),
('AS035', 'Avoid forcing the knees to stack'),
('AS035', 'Stop if pain occurs in the knees or hips'),

('AS036', 'Avoid with acute hamstring or lower back injury'),
('AS036', 'Bend the extended knee slightly if the hamstring is tight'),
('AS036', 'Avoid with recent knee injury on the folded leg'),
('AS036', 'Stop if pain occurs in the spine or hamstring'),

('AS037', 'Avoid with acute hamstring or spinal injury'),
('AS037', 'Bend the extended knee slightly if the hamstring is tight'),
('AS037', 'Avoid with lower back injury'),
('AS037', 'Stop if pain occurs in the neck or shoulder'),

('AS038', 'Avoid with acute knee or ankle injury'),
('AS038', 'Sit on a cushion if the hips do not reach the floor evenly'),
('AS038', 'Avoid with lower back injury'),
('AS038', 'Stop if pain occurs in the knee or ankle'),

('AS039', 'Avoid with acute hamstring or knee injury'),
('AS039', 'Use a strap around the foot if unable to hold it directly'),
('AS039', 'Avoid with lower back injury'),
('AS039', 'Stop if pain occurs in the knee or hamstring'),

('AS040', 'Avoid with acute hamstring or lower back injury'),
('AS040', 'Bend the knees generously if the hamstrings are tight'),
('AS040', 'Avoid with slipped disc conditions'),
('AS040', 'Stop if pain occurs in the spine or hamstrings');


-- ---------------------------------------------------------------------
-- STEP 6: Insert chakra_information (1 row per asana x 10 asanas = 10 rows)
-- ---------------------------------------------------------------------
INSERT INTO chakra_information (asana_id, chakra_name) VALUES
('AS031', 'Root Chakra (Muladhara)'),
('AS032', 'Solar Plexus Chakra (Manipura)'),
('AS033', 'Sacral Chakra (Svadhisthana)'),
('AS034', 'Sacral Chakra (Svadhisthana)'),
('AS035', 'Root Chakra (Muladhara)'),
('AS036', 'Solar Plexus Chakra (Manipura)'),
('AS037', 'Heart Chakra (Anahata)'),
('AS038', 'Sacral Chakra (Svadhisthana)'),
('AS039', 'Solar Plexus Chakra (Manipura)'),
('AS040', 'Root Chakra (Muladhara)');

COMMIT;

-- If everything above ran without error, the transaction is now committed.
-- Run day3_verification_queries.sql next to confirm counts and joins.
