-- =====================================================================
-- PRAGYA YOGA VERSE — DATA POPULATION (FIRST 20 ASANAS)
-- =====================================================================
-- Source: Master Asana Database Workbook v1.1.1 (content reproduced
-- verbatim; no yoga content modified, rewritten, or summarized).
-- Run AFTER pragya_yoga_schema.sql has created all five tables.
-- Compatible with MySQL 8.0+ and PostgreSQL 13+.
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. CATEGORIES
-- Only the categories actually used by the first 20 asanas are inserted
-- here. The remaining standard categories (Prone, Supine, Backbend,
-- Inversion) will be inserted when asanas 21-100 are populated.
-- ---------------------------------------------------------------------
INSERT INTO Categories (category_id, category_name, description) VALUES
    (1, 'Standing', 'Poses performed from an upright standing base, building strength, alignment, and stability through the legs and core.'),
    (2, 'Sitting', 'Poses performed from a seated base on the floor, typically used for grounding, hip opening, and breath work.'),
    (5, 'Balance', 'Poses that challenge single-limb or asymmetrical stability, building focus and coordination.'),
    (6, 'Twisting', 'Poses involving spinal rotation, used to improve mobility and stimulate the digestive organs.'),
    (7, 'Forward Bend', 'Poses involving forward flexion of the spine, used to stretch the posterior body and calm the nervous system.'),
    (10, 'Meditative', 'Seated, stable cross-legged or stacked-leg poses primarily used for meditation and pranayama practice.');

-- ---------------------------------------------------------------------
-- 2. ASANAS
-- ---------------------------------------------------------------------
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted) VALUES
    ('AS001', 1, 'Tadasana', 'Mountain Pose', 'Beginner', 'Tadasana is a foundational standing yoga posture that promotes proper body alignment, balance, and postural awareness. It serves as the starting position for many standing yoga poses.', '1. Stand with feet together or hip-width apart to begin.
2. Distribute body weight evenly across both feet and engage the thighs.
3. Lengthen the spine and lift gently through the crown of the head.
4. Relax the shoulders away from the ears and align the hips over the ankles.
5. Breathe steadily and evenly throughout the pose.
6. Hold the position for several breaths while maintaining steady alignment.
7. Release by softening the body and returning to a natural stance.', 'Quadriceps, Calves, Core, Erector Spinae, Shoulders'),
    ('AS002', 10, 'Sukhasana', 'Easy Pose', 'Beginner', 'Sukhasana is a simple cross-legged seated posture commonly used for meditation and pranayama practice. It encourages a relaxed, stable base while promoting calmness and steady breathing.', '1. Sit on the floor or a cushion with the legs extended to begin.
2. Fold the legs inward, crossing the shins comfortably in front of the body.
3. Rest the hands on the knees, palms facing up or down.
4. Lengthen the spine and align the head over the hips.
5. Breathe slowly and evenly while relaxing the facial muscles.
6. Hold the position for several breaths, staying relaxed and steady.
7. Release by straightening the legs one at a time.', 'Hip Flexors, Adductors, Core, Erector Spinae, Glutes'),
    ('AS003', 2, 'Vajrasana', 'Thunderbolt Pose', 'Beginner', 'Vajrasana is a kneeling posture in which the body rests on the heels, commonly practiced after meals to support digestion. It promotes a stable, upright seated position for breathing exercises.', '1. Kneel on the floor with the knees together to begin.
2. Bring the big toes to touch and lower the hips toward the heels.
3. Rest the palms on the thighs, facing down.
4. Lengthen the spine and keep the head level with the gaze forward.
5. Breathe steadily and evenly while holding the position.
6. Hold the pose for several breaths, staying grounded and stable.
7. Release by lifting the hips and extending the legs forward.', 'Quadriceps, Ankles, Hip Flexors, Core, Erector Spinae'),
    ('AS004', 10, 'Swastikasana', 'Auspicious Pose', 'Beginner', 'Swastikasana is a gentle cross-legged seated posture that supports meditation and calm, focused breathing. It provides a stable foundation for the spine while encouraging relaxation of the hips and legs.', '1. Sit on the floor with the legs extended forward to begin.
2. Bend the knees and tuck the feet between the thighs and calves.
3. Rest the hands on the knees, palms facing up.
4. Lengthen the spine and align the head over the hips.
5. Breathe evenly while relaxing the shoulders.
6. Hold the position for several breaths, staying calm and steady.
7. Release by gently straightening both legs.', 'Hip Flexors, Adductors, Core, Erector Spinae'),
    ('AS005', 10, 'Siddhasana', 'Accomplished Pose', 'Beginner', 'Siddhasana is a traditional meditation posture in which the heels are stacked to create a stable, grounded seated base. It is used to support focused breathing and extended meditation practice.', '1. Sit on the floor with the legs extended forward to begin.
2. Bend one heel toward the inner thigh and stack the other heel above it.
3. Rest the hands on the knees, palms facing up.
4. Lengthen the spine and align the head over the hips.
5. Breathe steadily while holding the position.
6. Hold the pose for several breaths, remaining calm and focused.
7. Release by carefully straightening both legs.', 'Hip Flexors, Adductors, Core, Erector Spinae'),
    ('AS006', 2, 'Dandasana', 'Staff Pose', 'Beginner', 'Dandasana is a seated posture that establishes proper spinal alignment and serves as a foundation for many seated forward bends. It strengthens the back while stretching the legs.', '1. Sit on the floor with the legs extended straight ahead to begin.
2. Flex the feet and press the palms lightly onto the floor.
3. Lengthen the spine and lift through the crown of the head.
4. Draw the shoulder blades down and align the hips evenly.
5. Breathe evenly while engaging the thigh muscles.
6. Hold the position for several breaths, keeping the spine tall.
7. Release by relaxing the legs and shaking them out gently.', 'Erector Spinae, Hamstrings, Calves, Core, Shoulders'),
    ('AS007', 7, 'Uttanasana', 'Standing Forward Bend', 'Beginner', 'Uttanasana is a standing forward fold that stretches the back body while calming the nervous system. It is often practiced to release tension in the spine, hamstrings, and neck.', '1. Stand with feet hip-width apart to begin.
2. Hinge forward from the hips, keeping the spine long.
3. Fold the torso toward the legs, bending the knees as needed.
4. Let the head and neck relax while aligning the hips over the ankles.
5. Breathe steadily while holding the fold.
6. Hold the position for several breaths, releasing tension gradually.
7. Release by slowly rolling up to standing, one vertebra at a time.', 'Hamstrings, Calves, Erector Spinae, Glutes, Neck'),
    ('AS008', 7, 'Ardha Uttanasana', 'Half Standing Forward Bend', 'Beginner', 'Ardha Uttanasana is a half forward bend that lengthens the spine while building strength in the back. It serves as a transitional posture between standing and full forward folds.', '1. Stand with feet hip-width apart to begin.
2. Hinge forward from the hips, keeping the spine long.
3. Place the fingertips on the floor or shins for support.
4. Lift the chest forward and align the neck with the spine.
5. Breathe evenly while holding the position.
6. Hold the pose for several breaths, keeping the back flat.
7. Release by folding forward or returning to standing.', 'Erector Spinae, Hamstrings, Core, Shoulders'),
    ('AS009', 7, 'Padangusthasana', 'Standing Big Toe Pose', 'Intermediate', 'Padangusthasana is a standing forward bend in which the hands hold the big toes to deepen the hamstring stretch. It challenges balance while lengthening the back of the body.', '1. Stand with feet hip-width apart to begin.
2. Shift the weight onto the feet and hinge forward from the hips.
3. Hold the big toes with the first two fingers of each hand.
4. Lengthen the spine as you fold and align the shoulders over the hips.
5. Breathe evenly while deepening the fold gradually.
6. Hold the position for several breaths, keeping the legs engaged.
7. Release by lowering the arms and returning to standing.', 'Hamstrings, Calves, Core, Ankles, Shoulders'),
    ('AS010', 7, 'Padahastasana', 'Hand Under Foot Pose', 'Intermediate', 'Padahastasana is a standing forward bend in which the hands are placed under the feet to deepen the stretch. It calms the mind while stretching the spine and hamstrings.', '1. Stand with feet hip-width apart to begin.
2. Hinge forward from the hips, keeping the spine long.
3. Slide the palms under the soles of the feet.
4. Bend the elbows gently to deepen the fold and align the shoulders.
5. Breathe steadily while holding the position.
6. Hold the pose for several breaths, relaxing the head and neck.
7. Release by withdrawing the hands and rising slowly.', 'Hamstrings, Erector Spinae, Calves, Shoulders'),
    ('AS011', 1, 'Malasana', 'Garland Pose', 'Intermediate', 'Malasana is a deep squatting posture that opens the hips and groin while strengthening the lower body. It is commonly used to improve mobility in the hips, knees, and ankles.', '1. Stand with feet slightly wider than hip-width to begin.
2. Turn the toes out and bend the knees into a squat.
3. Lower the hips toward the floor between the heels.
4. Bring the palms together and align the elbows against the inner knees.
5. Breathe evenly while lengthening the spine.
6. Hold the position for several breaths, staying grounded.
7. Release by straightening the legs and standing up slowly.', 'Glutes, Quadriceps, Hip Flexors, Ankles, Core'),
    ('AS012', 1, 'Utkata Konasana', 'Goddess Pose', 'Beginner', 'Utkata Konasana is a wide-legged standing squat that builds strength in the lower body while opening the hips and chest. It is often used to build stamina and stability.', '1. Stand with feet wide apart and toes turned outward to begin.
2. Bend the knees and lower the hips into a wide squat.
3. Raise the arms to shoulder height with the elbows bent.
4. Keep the knees tracking over the ankles and align the spine.
5. Breathe steadily while holding the position.
6. Hold the pose for several breaths, keeping the chest lifted.
7. Release by straightening the legs and lowering the arms.', 'Quadriceps, Glutes, Calves, Hip Flexors, Shoulders'),
    ('AS013', 1, 'Utkatasana', 'Chair Pose', 'Beginner', 'Utkatasana is a standing posture that resembles sitting in an imaginary chair, building strength and endurance in the legs. It also engages the core and improves overall balance.', '1. Stand with feet together or hip-width apart to begin.
2. Bend the knees and lower the hips as if sitting into a chair.
3. Raise the arms forward or overhead.
4. Keep the weight in the heels and align the knees over the ankles.
5. Breathe evenly while engaging the core.
6. Hold the position for several breaths, keeping the spine long.
7. Release by straightening the legs and lowering the arms.', 'Quadriceps, Glutes, Calves, Core, Shoulders'),
    ('AS014', 6, 'Parivrtta Utkatasana', 'Revolved Chair Pose', 'Intermediate', 'Parivrtta Utkatasana is a twisting variation of Chair Pose that combines strength with spinal rotation. It challenges balance while gently stimulating the digestive organs through the twisting action.', '1. Stand with feet together and bend the knees to begin.
2. Lower the hips as if sitting into a chair.
3. Bring the palms together and twist the torso toward one side.
4. Hook the opposite elbow outside the knee and align the shoulders.
5. Breathe steadily while holding the twist.
6. Hold the position for several breaths, keeping the knees aligned.
7. Release by untwisting and returning to center.', 'Quadriceps, Obliques, Core, Glutes, Shoulders'),
    ('AS015', 1, 'Anjaneyasana', 'Low Lunge Pose', 'Beginner', 'Anjaneyasana is a kneeling lunge posture that stretches the hip flexors while building strength in the legs. It gently opens the chest and prepares the body for deeper backbends.', '1. Step one foot forward into a lunge position to begin.
2. Lower the back knee to the floor and align the front knee over the ankle.
3. Rest the hands on the front thigh or lift them overhead.
4. Lengthen the spine and open the chest.
5. Breathe evenly while engaging the core.
6. Hold the position for several breaths, keeping the hips level.
7. Release by stepping the front foot back to standing.', 'Hip Flexors, Quadriceps, Glutes, Core, Shoulders'),
    ('AS016', 1, 'Virabhadrasana I', 'Warrior I Pose', 'Beginner', 'Virabhadrasana I is a standing lunge posture that builds strength in the legs while opening the chest and shoulders. It develops focus, stamina, and a sense of grounded confidence.', '1. Step one foot back into a lunge stance to begin.
2. Turn the back foot slightly outward for stability.
3. Bend the front knee and square the hips toward the front.
4. Raise the arms overhead and align the shoulders over the hips.
5. Breathe steadily while holding the lunge.
6. Hold the position for several breaths, keeping the spine tall.
7. Release by lowering the arms and stepping the feet together.', 'Quadriceps, Glutes, Hip Flexors, Core, Shoulders'),
    ('AS017', 1, 'Virabhadrasana II', 'Warrior II Pose', 'Beginner', 'Virabhadrasana II is a wide-legged standing posture that builds strength and stamina while opening the hips and chest. It develops focus and steady concentration through a grounded stance.', '1. Step the feet wide apart with the arms extended sideways to begin.
2. Turn the front foot forward and the back foot slightly inward.
3. Bend the front knee and keep the back leg straight.
4. Align the torso upright between the legs and gaze over the front hand.
5. Breathe evenly while holding the position.
6. Hold the pose for several breaths, keeping the shoulders relaxed.
7. Release by straightening the front leg and lowering the arms.', 'Quadriceps, Glutes, Hip Flexors, Core, Shoulders'),
    ('AS018', 5, 'Virabhadrasana III', 'Warrior III Pose', 'Intermediate', 'Virabhadrasana III is a balancing posture in which the body forms a horizontal line while standing on one leg. It builds strength, focus, and coordination throughout the entire body.', '1. Stand with feet hip-width apart to begin.
2. Shift the weight onto one foot and hinge forward from the hips.
3. Lift the opposite leg behind the body while extending the arms forward.
4. Align the hips level and keep the standing leg engaged.
5. Breathe steadily while holding the balance.
6. Hold the position for several breaths, forming a straight line through the body.
7. Release by lowering the raised leg and returning to standing.', 'Glutes, Hamstrings, Core, Erector Spinae, Shoulders'),
    ('AS019', 1, 'Trikonasana', 'Triangle Pose', 'Beginner', 'Trikonasana is a standing lateral stretch that lengthens the sides of the body while strengthening the legs. It improves flexibility in the hips and spine while enhancing balance.', '1. Stand with feet wide apart to begin.
2. Turn the front foot forward and the back foot slightly inward.
3. Extend the arms and hinge at the hips toward the front leg.
4. Reach the front hand toward the shin and extend the other arm upward.
5. Breathe evenly while holding the stretch.
6. Hold the position for several breaths, keeping both legs engaged.
7. Release by lifting the torso and lowering the arms.', 'Hamstrings, Quadriceps, Obliques, Shoulders, Core'),
    ('AS020', 6, 'Parivrtta Trikonasana', 'Revolved Triangle Pose', 'Intermediate', 'Parivrtta Trikonasana is a twisting standing posture that combines a forward bend with spinal rotation. It improves balance and flexibility while gently stimulating the digestive organs.', '1. Stand with feet wide apart to begin.
2. Turn the front foot forward and square the hips toward it.
3. Hinge forward from the hips and twist the torso toward the front leg.
4. Reach the opposite hand toward the front foot and extend the other arm upward.
5. Breathe steadily while holding the twist.
6. Hold the position for several breaths, keeping the spine long.
7. Release by untwisting and returning to standing.', 'Hamstrings, Obliques, Core, Hip Flexors, Shoulders');

-- ---------------------------------------------------------------------
-- 3. BENEFITS
-- Each bullet from the workbook's Benefits column becomes one row.
-- The '•' bullet marker is stripped as list-formatting only; the
-- sentence text itself is preserved exactly as written.
-- ---------------------------------------------------------------------
INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS001', 'Improves posture and overall body alignment.'),
    ('AS001', 'Strengthens the thighs, knees, and ankles.'),
    ('AS001', 'Builds awareness of standing alignment.'),
    ('AS001', 'Gently stretches the chest and shoulders.'),
    ('AS001', 'Develops balance and steadiness.'),
    ('AS002', 'Calms the mind and reduces mental restlessness.'),
    ('AS002', 'Gently opens the hips and stretches the knees.'),
    ('AS002', 'Encourages an upright, comfortable seated posture.'),
    ('AS002', 'Supports steady, relaxed breathing.'),
    ('AS002', 'Prepares the body for meditation practice.'),
    ('AS003', 'Aids digestion when practiced after meals.'),
    ('AS003', 'Stretches the ankles, thighs, and knees.'),
    ('AS003', 'Encourages an upright, stable seated posture.'),
    ('AS003', 'Calms the nervous system.'),
    ('AS003', 'Supports steady breathing practice.'),
    ('AS004', 'Encourages a stable, grounded seated posture.'),
    ('AS004', 'Gently opens the hips and knees.'),
    ('AS004', 'Supports focus during breathing practices.'),
    ('AS004', 'Calms the mind for meditation.'),
    ('AS004', 'Reduces restlessness in the legs.'),
    ('AS005', 'Promotes steady, upright sitting posture.'),
    ('AS005', 'Calms the mind and reduces mental distraction.'),
    ('AS005', 'Gently stretches the hips and knees.'),
    ('AS005', 'Supports longer breathing and meditation practice.'),
    ('AS005', 'Encourages groundedness and stability.'),
    ('AS006', 'Strengthens the back muscles and improves posture.'),
    ('AS006', 'Gently stretches the hamstrings and calves.'),
    ('AS006', 'Builds awareness of spinal alignment.'),
    ('AS006', 'Prepares the body for seated forward bends.'),
    ('AS006', 'Encourages steady, controlled breathing.'),
    ('AS007', 'Stretches the hamstrings, calves, and lower back.'),
    ('AS007', 'Calms the nervous system and reduces stress.'),
    ('AS007', 'Improves flexibility in the spine.'),
    ('AS007', 'Encourages fresh blood flow to the upper body.'),
    ('AS007', 'Relieves tension in the neck and shoulders.'),
    ('AS008', 'Lengthens the spine and improves posture awareness.'),
    ('AS008', 'Gently stretches the hamstrings and calves.'),
    ('AS008', 'Strengthens the back muscles.'),
    ('AS008', 'Builds a transition between standing and forward bends.'),
    ('AS008', 'Encourages steady, controlled breathing.'),
    ('AS009', 'Deeply stretches the hamstrings and calves.'),
    ('AS009', 'Improves balance and concentration.'),
    ('AS009', 'Strengthens the legs and ankles.'),
    ('AS009', 'Encourages spinal lengthening.'),
    ('AS009', 'Calms the mind through focused breathing.'),
    ('AS010', 'Stretches the hamstrings and lower back.'),
    ('AS010', 'Improves flexibility in the spine.'),
    ('AS010', 'Calms the nervous system.'),
    ('AS010', 'Encourages fresh blood flow to the brain.'),
    ('AS010', 'Relieves tension in the shoulders and neck.'),
    ('AS011', 'Gently opens the hips and groin.'),
    ('AS011', 'Strengthens the ankles, knees, and lower back.'),
    ('AS011', 'Improves mobility in the lower body.'),
    ('AS011', 'Encourages an upright, grounded posture.'),
    ('AS011', 'Supports digestion when practiced comfortably.'),
    ('AS012', 'Strengthens the thighs, glutes, and calves.'),
    ('AS012', 'Opens the hips and chest.'),
    ('AS012', 'Builds lower-body stamina.'),
    ('AS012', 'Improves balance and stability.'),
    ('AS012', 'Encourages steady, energizing breathing.'),
    ('AS013', 'Strengthens the thighs, calves, and ankles.'),
    ('AS013', 'Builds core stability and endurance.'),
    ('AS013', 'Improves balance and focus.'),
    ('AS013', 'Tones the muscles of the lower body.'),
    ('AS013', 'Encourages steady, controlled breathing.'),
    ('AS014', 'Strengthens the thighs and core muscles.'),
    ('AS014', 'Improves spinal rotation and flexibility.'),
    ('AS014', 'Enhances balance and concentration.'),
    ('AS014', 'Gently stimulates the digestive organs.'),
    ('AS014', 'Encourages steady, controlled breathing.'),
    ('AS015', 'Stretches the hip flexors and thighs.'),
    ('AS015', 'Strengthens the legs and core.'),
    ('AS015', 'Improves balance and stability.'),
    ('AS015', 'Gently opens the chest.'),
    ('AS015', 'Encourages steady, controlled breathing.'),
    ('AS016', 'Strengthens the legs, hips, and core.'),
    ('AS016', 'Opens the chest and shoulders.'),
    ('AS016', 'Improves balance and stamina.'),
    ('AS016', 'Builds focus and mental steadiness.'),
    ('AS016', 'Encourages steady, energizing breathing.'),
    ('AS017', 'Strengthens the legs, hips, and core.'),
    ('AS017', 'Improves stamina and endurance.'),
    ('AS017', 'Opens the hips and chest.'),
    ('AS017', 'Enhances balance and concentration.'),
    ('AS017', 'Encourages steady, controlled breathing.'),
    ('AS018', 'Strengthens the legs, glutes, and core.'),
    ('AS018', 'Improves balance and coordination.'),
    ('AS018', 'Enhances focus and mental concentration.'),
    ('AS018', 'Tones the back and shoulder muscles.'),
    ('AS018', 'Builds overall body stability.'),
    ('AS019', 'Stretches the legs, hips, and spine.'),
    ('AS019', 'Strengthens the thighs, knees, and ankles.'),
    ('AS019', 'Improves balance and stability.'),
    ('AS019', 'Opens the chest and shoulders.'),
    ('AS019', 'Relieves tension in the lower back.'),
    ('AS020', 'Improves spinal rotation and flexibility.'),
    ('AS020', 'Strengthens the legs and core.'),
    ('AS020', 'Enhances balance and coordination.'),
    ('AS020', 'Stretches the hamstrings and hips.'),
    ('AS020', 'Gently stimulates digestion.');

-- ---------------------------------------------------------------------
-- 4. PRECAUTIONS
-- Each bullet from the workbook's Precautions column becomes one row.
-- ---------------------------------------------------------------------
INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS001', 'Avoid if experiencing dizziness or low blood pressure.'),
    ('AS001', 'Keep knees soft if you have knee sensitivity.'),
    ('AS001', 'Practice near a wall for extra support if balance is unsteady.'),
    ('AS001', 'Stop if pain occurs in the lower back.'),
    ('AS002', 'Sit on a cushion if the hips feel tight or knees are elevated.'),
    ('AS002', 'Avoid prolonged sitting with a knee or hip injury.'),
    ('AS002', 'Change the cross of the legs periodically to balance the body.'),
    ('AS002', 'Stop if numbness or tingling occurs in the legs.'),
    ('AS003', 'Avoid with a recent knee or ankle injury.'),
    ('AS003', 'Use a cushion under the hips if discomfort occurs.'),
    ('AS003', 'Avoid prolonged practice with varicose veins in the legs.'),
    ('AS003', 'Stop if numbness develops in the feet or legs.'),
    ('AS004', 'Use a cushion for support if the hips are tight.'),
    ('AS004', 'Avoid with acute knee pain.'),
    ('AS004', 'Change the leg cross periodically for balance.'),
    ('AS004', 'Stop if tingling or numbness occurs in the legs.'),
    ('AS005', 'Avoid with acute knee, hip, or ankle injury.'),
    ('AS005', 'Use a cushion if the hips do not comfortably reach the floor.'),
    ('AS005', 'Alternate the leg cross periodically.'),
    ('AS005', 'Stop if numbness occurs in the legs or feet.'),
    ('AS006', 'Avoid with acute lower back pain.'),
    ('AS006', 'Bend the knees slightly if the hamstrings are tight.'),
    ('AS006', 'Sit on a folded blanket if the pelvis tilts backward.'),
    ('AS006', 'Stop if sharp pain occurs in the spine or hips.'),
    ('AS007', 'Avoid with acute lower back or hamstring injury.'),
    ('AS007', 'Bend the knees generously if the hamstrings are tight.'),
    ('AS007', 'Avoid with high blood pressure or dizziness.'),
    ('AS007', 'Rise slowly to prevent lightheadedness.'),
    ('AS008', 'Avoid with acute lower back injury.'),
    ('AS008', 'Bend the knees slightly if the hamstrings feel tight.'),
    ('AS008', 'Avoid overarching the lower back.'),
    ('AS008', 'Stop if pain occurs in the spine or hamstrings.'),
    ('AS009', 'Avoid with hamstring or lower back injury.'),
    ('AS009', 'Bend the knee slightly if balance is unsteady.'),
    ('AS009', 'Avoid with dizziness or low blood pressure.'),
    ('AS009', 'Use a strap around the foot if unable to reach the toe.'),
    ('AS010', 'Avoid with acute back or hamstring injury.'),
    ('AS010', 'Bend the knees if the hamstrings feel tight.'),
    ('AS010', 'Avoid with high blood pressure or dizziness.'),
    ('AS010', 'Rise slowly to prevent lightheadedness.'),
    ('AS011', 'Avoid with acute knee or ankle injury.'),
    ('AS011', 'Use support under the heels if they lift off the floor.'),
    ('AS011', 'Avoid deep squatting during pregnancy without guidance.'),
    ('AS011', 'Stop if pain occurs in the knees or lower back.'),
    ('AS012', 'Avoid with acute knee or hip injury.'),
    ('AS012', 'Keep the knees aligned over the ankles to protect the joints.'),
    ('AS012', 'Avoid deep bending during pregnancy without guidance.'),
    ('AS012', 'Stop if strain occurs in the knees or lower back.'),
    ('AS013', 'Avoid with acute knee or lower back injury.'),
    ('AS013', 'Keep the knees behind the toes to protect the joints.'),
    ('AS013', 'Avoid with low blood pressure or dizziness.'),
    ('AS013', 'Stop if pain occurs in the knees or spine.'),
    ('AS014', 'Avoid with acute knee, hip, or spinal injury.'),
    ('AS014', 'Keep the twist gentle and pain-free.'),
    ('AS014', 'Avoid during pregnancy without professional guidance.'),
    ('AS014', 'Stop if discomfort occurs in the lower back.'),
    ('AS015', 'Avoid with acute knee or hip injury.'),
    ('AS015', 'Use padding under the back knee for comfort.'),
    ('AS015', 'Avoid deep backbends with lower back pain.'),
    ('AS015', 'Stop if strain occurs in the knees or hips.'),
    ('AS016', 'Avoid with acute knee, hip, or shoulder injury.'),
    ('AS016', 'Keep the front knee aligned over the ankle.'),
    ('AS016', 'Avoid with high blood pressure.'),
    ('AS016', 'Stop if strain occurs in the knees or lower back.'),
    ('AS017', 'Avoid with acute knee or hip injury.'),
    ('AS017', 'Keep the front knee aligned over the ankle.'),
    ('AS017', 'Avoid with high blood pressure.'),
    ('AS017', 'Stop if strain occurs in the knees or shoulders.'),
    ('AS018', 'Avoid with acute hamstring, hip, or lower back injury.'),
    ('AS018', 'Practice near a wall for extra balance support.'),
    ('AS018', 'Avoid with dizziness or low blood pressure.'),
    ('AS018', 'Stop if strain occurs in the standing leg.'),
    ('AS019', 'Avoid with acute back, hip, or neck injury.'),
    ('AS019', 'Avoid with low blood pressure or dizziness.'),
    ('AS019', 'Keep the front knee soft to protect the joint.'),
    ('AS019', 'Stop if strain occurs in the hips or lower back.'),
    ('AS020', 'Avoid with acute back, hip, or hamstring injury.'),
    ('AS020', 'Avoid during pregnancy without professional guidance.'),
    ('AS020', 'Keep the twist gentle and pain-free.'),
    ('AS020', 'Stop if strain occurs in the lower back or hips.');

-- ---------------------------------------------------------------------
-- 5. CHAKRA_INFORMATION
-- The workbook lists one chakra per asana for AS001-AS020; each becomes
-- a single row (schema supports multiple chakras per asana if needed).
-- ---------------------------------------------------------------------
INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS001', 'Root Chakra (Muladhara)'),
    ('AS002', 'Root Chakra (Muladhara)'),
    ('AS003', 'Root Chakra (Muladhara)'),
    ('AS004', 'Root Chakra (Muladhara)'),
    ('AS005', 'Root Chakra (Muladhara)'),
    ('AS006', 'Solar Plexus Chakra (Manipura)'),
    ('AS007', 'Third Eye Chakra (Ajna)'),
    ('AS008', 'Solar Plexus Chakra (Manipura)'),
    ('AS009', 'Sacral Chakra (Svadhisthana)'),
    ('AS010', 'Sacral Chakra (Svadhisthana)'),
    ('AS011', 'Root Chakra (Muladhara)'),
    ('AS012', 'Sacral Chakra (Svadhisthana)'),
    ('AS013', 'Solar Plexus Chakra (Manipura)'),
    ('AS014', 'Solar Plexus Chakra (Manipura)'),
    ('AS015', 'Sacral Chakra (Svadhisthana)'),
    ('AS016', 'Solar Plexus Chakra (Manipura)'),
    ('AS017', 'Solar Plexus Chakra (Manipura)'),
    ('AS018', 'Solar Plexus Chakra (Manipura)'),
    ('AS019', 'Heart Chakra (Anahata)'),
    ('AS020', 'Solar Plexus Chakra (Manipura)');

-- =====================================================================
-- END OF DATA POPULATION — First 20 asanas (AS001-AS020) only.
-- =====================================================================