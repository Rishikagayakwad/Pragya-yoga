-- =====================================================================
-- PRAGYA YOGA VERSE — DATA POPULATION (ASANAS 21-30)
-- =====================================================================
-- Source: Master Asana Database Workbook v1.1.1 (AS021-AS030 content
-- drafted for this batch, reviewed, and QA-checked; reproduced verbatim
-- here, not modified or summarized).
-- Run AFTER pragya_yoga_schema.sql and pragya_yoga_data_first20.sql.
-- No new Categories rows needed — all 10 asanas use categories already
-- inserted for the first 20 (Standing, Balance, Twisting, Forward Bend).
-- Compatible with PostgreSQL 13+.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. ASANAS
-- ---------------------------------------------------------------------
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted) VALUES
    ('AS021', 1, 'Parsvakonasana', 'Extended Side Angle Pose', 'Intermediate', 'Parsvakonasana is a standing lateral stretch that combines a deep knee bend with a long extension through the side body. It builds strength in the legs while opening the chest, shoulders, and hips.', '1. Stand with feet wide apart to begin.
2. Turn the front foot forward and bend the front knee to a right angle.
3. Lower the front forearm or hand to the thigh or floor beside the front foot.
4. Extend the other arm overhead in line with the back leg.
5. Breathe steadily while lengthening the side body.
6. Hold the position for several breaths, keeping the chest open.
7. Release by pressing into the front foot and rising to standing.', 'Quadriceps, Obliques, Adductors, Shoulders, Core'),
    ('AS022', 6, 'Parivrtta Parsvakonasana', 'Revolved Side Angle Pose', 'Advanced', 'Parivrtta Parsvakonasana is a challenging twisting lunge that combines balance, strength, and spinal rotation. It deepens flexibility in the hips and spine while stimulating the abdominal organs.', '1. Step one foot back into a lunge position to begin.
2. Lower the back heel toward the floor and square the hips forward.
3. Bring the palms together and twist the torso toward the front leg.
4. Hook the opposite elbow outside the front knee.
5. Breathe evenly while deepening the twist gradually.
6. Hold the position for several breaths, keeping the spine long.
7. Release by untwisting and stepping back to standing.', 'Quadriceps, Obliques, Hip Flexors, Core, Shoulders'),
    ('AS023', 5, 'Ardha Chandrasana', 'Half Moon Pose', 'Intermediate', 'Ardha Chandrasana is a standing balance posture in which the body extends into a horizontal line supported on one leg and one hand. It builds strength, coordination, and steady focus throughout the body.', '1. Stand with feet hip-width apart to begin.
2. Shift the weight onto one foot and hinge forward from the hips.
3. Place the same-side hand on the floor or a block a short distance ahead.
4. Lift the opposite leg to hip height and extend the top arm upward.
5. Breathe steadily while holding the balance.
6. Hold the position for several breaths, keeping the hips stacked.
7. Release by lowering the lifted leg and returning to standing.', 'Glutes, Quadriceps, Core, Obliques, Ankles'),
    ('AS024', 6, 'Parivrtta Ardha Chandrasana', 'Revolved Half Moon Pose', 'Advanced', 'Parivrtta Ardha Chandrasana is an advanced balancing posture that adds a spinal twist to the standing half-moon position. It demands strength, flexibility, and focused coordination throughout the entire body.', '1. Stand with feet hip-width apart to begin.
2. Hinge forward from the hips and place one hand on the floor or a block.
3. Lift the opposite leg to hip height, keeping the standing leg engaged.
4. Twist the torso and extend the top arm toward the ceiling.
5. Breathe evenly while holding the balance and twist.
6. Hold the position for several breaths, keeping the hips level.
7. Release by untwisting and lowering the lifted leg to standing.', 'Glutes, Obliques, Core, Quadriceps, Shoulders'),
    ('AS025', 7, 'Prasarita Padottanasana', 'Wide-Legged Forward Bend', 'Intermediate', 'Prasarita Padottanasana is a wide-legged standing forward fold that stretches the hamstrings and inner thighs while calming the mind. It also lengthens the spine and relieves tension in the back.', '1. Stand with feet wide apart, toes turned slightly inward, to begin.
2. Place the hands on the hips and lengthen the spine.
3. Hinge forward from the hips, lowering the torso between the legs.
4. Place the fingertips or palms on the floor beneath the shoulders.
5. Breathe steadily while relaxing the head and neck.
6. Hold the position for several breaths, deepening the fold gradually.
7. Release by pressing into the feet and rising slowly to standing.', 'Hamstrings, Adductors, Calves, Erector Spinae, Shoulders'),
    ('AS026', 7, 'Parsvottanasana', 'Intense Side Stretch Pose', 'Intermediate', 'Parsvottanasana is a standing forward bend performed in a lunge stance that intensely stretches the legs and spine. It builds balance and focus while deeply lengthening the hamstrings.', '1. Step one foot forward into a short lunge stance to begin.
2. Square the hips toward the front foot and lengthen the spine.
3. Hinge forward from the hips, folding the torso over the front leg.
4. Rest the hands on the floor, a block, or the shin.
5. Breathe evenly while deepening the fold gradually.
6. Hold the position for several breaths, keeping the legs engaged.
7. Release by lifting the torso and stepping the feet together.', 'Hamstrings, Calves, Erector Spinae, Shoulders, Core'),
    ('AS027', 6, 'Parivrtta Hasta Padangusthasana', 'Revolved Hand-to-Big-Toe Pose', 'Advanced', 'Parivrtta Hasta Padangusthasana is an advanced standing balance posture that combines a leg extension with a deep spinal twist. It requires strength, flexibility, and sustained focus to maintain stability.', '1. Stand with feet hip-width apart to begin.
2. Shift the weight onto one leg and lift the opposite foot, holding the big toe.
3. Extend the lifted leg forward while keeping the standing leg steady.
4. Twist the torso and guide the lifted leg out to the side.
5. Breathe evenly while holding the twist and balance.
6. Hold the position for several breaths, keeping the spine long.
7. Release by untwisting and lowering the leg to standing.', 'Hamstrings, Obliques, Core, Hip Flexors, Ankles'),
    ('AS028', 5, 'Natarajasana', 'Dancer Pose', 'Intermediate', 'Natarajasana is a graceful standing backbend and balance posture that stretches the front of the body while extending one leg overhead. It builds strength, flexibility, and poise throughout the body.', '1. Stand with feet hip-width apart to begin.
2. Shift the weight onto one leg and bend the opposite knee, reaching back to hold the foot.
3. Extend the free arm forward and begin to hinge slightly at the hips.
4. Lift the held foot upward while extending the chest forward.
5. Breathe steadily while balancing and lengthening the spine.
6. Hold the position for several breaths, keeping the standing leg engaged.
7. Release by lowering the foot and returning to standing.', 'Quadriceps, Shoulders, Core, Erector Spinae, Glutes'),
    ('AS029', 5, 'Garudasana', 'Eagle Pose', 'Intermediate', 'Garudasana is a standing balance posture in which the arms and legs wrap around each other, building focus and stability. It stretches the shoulders and outer hips while strengthening the legs.', '1. Stand with feet hip-width apart to begin.
2. Bend the knees slightly and cross one thigh over the other.
3. Hook the top foot behind the standing calf if possible.
4. Cross the arms in front of the body and wrap the forearms together.
5. Breathe evenly while balancing and lifting the elbows slightly.
6. Hold the position for several breaths, staying steady and focused.
7. Release by unwinding the arms and legs and returning to standing.', 'Quadriceps, Glutes, Shoulders, Ankles, Core'),
    ('AS030', 1, 'Talasana', 'Palm Tree Pose', 'Beginner', 'Talasana is a simple standing stretch in which the body extends fully upward onto the toes, lengthening the entire spine. It builds balance while gently toning the legs and core.', '1. Stand with feet together or hip-width apart to begin.
2. Interlace the fingers and turn the palms upward overhead.
3. Press through the feet and rise onto the toes.
4. Lengthen the spine and reach upward through the fingertips.
5. Breathe steadily while holding the stretch and balance.
6. Hold the position for several breaths, staying steady.
7. Release by lowering the heels and releasing the arms.', 'Calves, Ankles, Core, Shoulders, Erector Spinae');

-- ---------------------------------------------------------------------
-- 2. BENEFITS
-- ---------------------------------------------------------------------
INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS021', 'Strengthens the thighs, knees, and ankles.'),
    ('AS021', 'Stretches the side body, groin, and shoulders.'),
    ('AS021', 'Improves stamina and balance.'),
    ('AS021', 'Opens the chest and lungs for deeper breathing.'),
    ('AS021', 'Builds focus and steady concentration.'),
    ('AS022', 'Improves spinal rotation and flexibility.'),
    ('AS022', 'Strengthens the legs, core, and shoulders.'),
    ('AS022', 'Enhances balance and coordination.'),
    ('AS022', 'Stimulates digestion through the twisting action.'),
    ('AS022', 'Builds focus and mental steadiness.'),
    ('AS023', 'Strengthens the legs, glutes, and ankles.'),
    ('AS023', 'Improves balance and coordination.'),
    ('AS023', 'Opens the hips and chest.'),
    ('AS023', 'Enhances focus and concentration.'),
    ('AS023', 'Tones the core and back muscles.'),
    ('AS024', 'Strengthens the standing leg and core.'),
    ('AS024', 'Improves balance and spinal rotation.'),
    ('AS024', 'Stimulates the abdominal organs.'),
    ('AS024', 'Enhances focus and mental steadiness.'),
    ('AS024', 'Builds overall body coordination.'),
    ('AS025', 'Stretches the hamstrings, calves, and inner thighs.'),
    ('AS025', 'Lengthens and decompresses the spine.'),
    ('AS025', 'Calms the nervous system.'),
    ('AS025', 'Relieves tension in the neck and shoulders.'),
    ('AS025', 'Improves circulation to the upper body.'),
    ('AS026', 'Stretches the hamstrings, calves, and shoulders.'),
    ('AS026', 'Improves balance and spinal flexibility.'),
    ('AS026', 'Strengthens the legs and ankles.'),
    ('AS026', 'Calms the mind and reduces stress.'),
    ('AS026', 'Encourages steady, controlled breathing.'),
    ('AS027', 'Strengthens the standing leg and core.'),
    ('AS027', 'Improves spinal rotation and hip flexibility.'),
    ('AS027', 'Enhances balance and concentration.'),
    ('AS027', 'Stretches the hamstrings and hips.'),
    ('AS027', 'Builds overall body coordination.'),
    ('AS028', 'Stretches the shoulders, chest, and thighs.'),
    ('AS028', 'Strengthens the standing leg and core.'),
    ('AS028', 'Improves balance and focus.'),
    ('AS028', 'Enhances flexibility in the spine and hips.'),
    ('AS028', 'Builds grace and body awareness.'),
    ('AS029', 'Improves balance and concentration.'),
    ('AS029', 'Stretches the shoulders, upper back, and outer hips.'),
    ('AS029', 'Strengthens the thighs and ankles.'),
    ('AS029', 'Enhances joint mobility in the arms and legs.'),
    ('AS029', 'Calms the mind through focused breathing.'),
    ('AS030', 'Lengthens the spine and improves posture.'),
    ('AS030', 'Strengthens the ankles, calves, and thighs.'),
    ('AS030', 'Improves balance and steadiness.'),
    ('AS030', 'Gently stretches the shoulders and chest.'),
    ('AS030', 'Encourages steady, calm breathing.');

-- ---------------------------------------------------------------------
-- 3. PRECAUTIONS
-- ---------------------------------------------------------------------
INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS021', 'Avoid with acute knee, hip, or shoulder injury.'),
    ('AS021', 'Keep the front knee aligned over the ankle.'),
    ('AS021', 'Avoid with high blood pressure or migraine.'),
    ('AS021', 'Stop if strain occurs in the knee or lower back.'),
    ('AS022', 'Avoid with acute knee, hip, or spinal injury.'),
    ('AS022', 'Avoid during pregnancy without professional guidance.'),
    ('AS022', 'Keep the twist gentle and pain-free.'),
    ('AS022', 'Stop if discomfort occurs in the lower back or knees.'),
    ('AS023', 'Avoid with acute ankle, knee, or hip injury.'),
    ('AS023', 'Practice near a wall for extra balance support.'),
    ('AS023', 'Avoid with low blood pressure or dizziness.'),
    ('AS023', 'Stop if strain occurs in the standing leg.'),
    ('AS024', 'Avoid with acute hip, hamstring, or spinal injury.'),
    ('AS024', 'Practice near a wall for additional balance support.'),
    ('AS024', 'Avoid with dizziness or low blood pressure.'),
    ('AS024', 'Stop if strain occurs in the standing leg or lower back.'),
    ('AS025', 'Avoid with acute lower back or hamstring injury.'),
    ('AS025', 'Bend the knees generously if the hamstrings are tight.'),
    ('AS025', 'Avoid with high blood pressure or dizziness.'),
    ('AS025', 'Rise slowly to prevent lightheadedness.'),
    ('AS026', 'Avoid with acute hamstring, hip, or lower back injury.'),
    ('AS026', 'Bend the front knee slightly if balance is unsteady.'),
    ('AS026', 'Avoid with high blood pressure or dizziness.'),
    ('AS026', 'Stop if strain occurs in the hamstrings or spine.'),
    ('AS027', 'Avoid with acute hamstring, hip, or spinal injury.'),
    ('AS027', 'Use a strap around the foot if unable to reach the toe.'),
    ('AS027', 'Avoid with dizziness or low blood pressure.'),
    ('AS027', 'Stop if strain occurs in the standing leg.'),
    ('AS028', 'Avoid with acute shoulder, hip, or lower back injury.'),
    ('AS028', 'Practice near a wall for extra balance support.'),
    ('AS028', 'Avoid with low blood pressure or dizziness.'),
    ('AS028', 'Stop if strain occurs in the standing leg or back.'),
    ('AS029', 'Avoid with acute knee, shoulder, or ankle injury.'),
    ('AS029', 'Practice near a wall for additional support.'),
    ('AS029', 'Avoid deep wrapping with joint instability.'),
    ('AS029', 'Stop if strain occurs in the knees or shoulders.'),
    ('AS030', 'Avoid with acute ankle or balance-related conditions.'),
    ('AS030', 'Practice near a wall for extra support if unsteady.'),
    ('AS030', 'Keep knees soft if experiencing knee sensitivity.'),
    ('AS030', 'Stop if dizziness occurs while balancing.');

-- ---------------------------------------------------------------------
-- 4. CHAKRA INFORMATION
-- ---------------------------------------------------------------------
INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS021', 'Heart Chakra (Anahata)'),
    ('AS022', 'Solar Plexus Chakra (Manipura)'),
    ('AS023', 'Solar Plexus Chakra (Manipura)'),
    ('AS024', 'Solar Plexus Chakra (Manipura)'),
    ('AS025', 'Third Eye Chakra (Ajna)'),
    ('AS026', 'Third Eye Chakra (Ajna)'),
    ('AS027', 'Solar Plexus Chakra (Manipura)'),
    ('AS028', 'Heart Chakra (Anahata)'),
    ('AS029', 'Third Eye Chakra (Ajna)'),
    ('AS030', 'Crown Chakra (Sahasrara)');
