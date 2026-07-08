-- =====================================================================
-- PRAGYA YOGA VERSE — DAY 6 MIGRATION
-- Adds asanas AS041-AS050 (Marichyasana I/III/IV, Bharadvajasana,
-- Ardha/full Matsyendrasana, Ardha/full Padmasana, Gorakshasana,
-- Baddha Padmasana) to bring the live database from 40 to 50 asanas,
-- matching the Master Asana List and Week 3 success metric.
-- Full content authored fresh (workbook only had ID/name/difficulty for
-- these rows) - same rigor as Days 1-3 (schema) + Day 5 (AI content).
-- =====================================================================

BEGIN;

-- AS041 — Marichi Pose I (Marichyasana I)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS041', 6, 'Marichyasana I', 'Marichi Pose I', 'Beginner', 'A seated pose combining a gentle spinal twist with a forward-folding bind, named after the sage Marichi. One leg extends forward while the other bends with the foot close to the sitting bone, and the arms wrap around the shin to clasp behind the back.', '1. Sit with legs extended, then bend one knee, placing the foot flat close to the sitting bone.
2. Keep the extended leg active with the foot flexed.
3. Wrap the arm on the bent-knee side around the shin.
4. Reach the other arm behind the back to clasp the wrapping hand or wrist.
5. Lengthen the spine on an inhale, then fold gently forward over the extended leg on an exhale.
6. Hold for several breaths, then release and repeat on the other side.', 'Hamstrings, Shoulders, Obliques, Spine', 'Hold for 30-45 seconds per side', 'marichi-i', 'Keep the extended leg active with the foot flexed rather than letting it roll outward. Skip the arm bind at first and simply hold the shin if your shoulders feel tight. Fold forward only as far as keeps the spine long, not rounded.', 'Rounding the back to force the bind instead of keeping the spine extended. Letting the extended leg''s knee bend or the foot sickle inward. Rushing into the fold before the hips and shoulders have warmed up.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS041', 'Stretches the hamstrings and shoulders'),
    ('AS041', 'Gently massages the abdominal organs'),
    ('AS041', 'Improves spinal mobility'),
    ('AS041', 'Calms the nervous system'),
    ('AS041', 'Improves seated posture');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS041', 'Avoid with acute lower back or shoulder injury'),
    ('AS041', 'Skip the arm bind if shoulders are tight, holding the shin instead'),
    ('AS041', 'Move into the fold gradually, not with force'),
    ('AS041', 'Avoid during pregnancy');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS041', 'Manipura (Solar Plexus Chakra)');

-- AS042 — Marichi Pose III (Marichyasana III)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS042', 6, 'Marichyasana III', 'Marichi Pose III', 'Intermediate', 'A seated spinal twist in which one leg is bent with the foot flat on the floor and the other extended, the torso rotating toward the bent knee with the opposite arm hooking around the shin.', '1. Sit with legs extended, bend one knee and place the foot flat close to the sitting bone.
2. Keep the extended leg active and reaching away.
3. Inhale to lengthen the spine, then exhale to rotate the torso toward the bent knee.
4. Hook the opposite elbow outside the bent knee, or wrap the arm around the shin for a deeper bind.
5. Reach the other hand behind the back to clasp if the bind is accessible.
6. Hold for several breaths, then release and repeat on the other side.', 'Obliques, Spine, Shoulders, Hips', 'Hold for 20-30 seconds per side', 'marichi-iii', 'Sit on a folded blanket if the pelvis tips backward, making the twist harder to access. Rotate from the belly and mid-back first before pulling with the arms. Keep the extended leg active and grounded throughout.', 'Pulling the twist deeper with the arms instead of rotating from the spine. Letting the extended leg''s knee lift or turn outward. Collapsing the chest instead of staying tall through the twist.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS042', 'Increases spinal rotation and mobility'),
    ('AS042', 'Stimulates digestion'),
    ('AS042', 'Stretches the shoulders and hips'),
    ('AS042', 'Relieves tension in the back'),
    ('AS042', 'Improves seated balance');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS042', 'Avoid with acute spinal or disc injury'),
    ('AS042', 'Skip the full bind if shoulders or hips are tight'),
    ('AS042', 'Rotate from the mid-back, not by forcing the neck'),
    ('AS042', 'Avoid during pregnancy');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS042', 'Manipura (Solar Plexus Chakra)');

-- AS043 — Marichi Pose IV (Marichyasana IV)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS043', 6, 'Marichyasana IV', 'Marichi Pose IV', 'Advanced', 'A deep seated twist combining a half-lotus leg position with a spinal rotation and full arm bind, requiring significant hip and shoulder flexibility.', '1. Sit with legs extended, fold one leg into half-lotus with the foot resting on the opposite hip crease.
2. Bend the other knee, placing the foot flat close to the sitting bone.
3. Inhale to lengthen the spine, then exhale to rotate toward the bent knee.
4. Wrap the arm around the bent shin and reach the other arm behind the back to clasp hands.
5. Hold for several breaths, then release and repeat on the other side.', 'Hips, Obliques, Shoulders, Spine', 'Hold for 15-20 seconds per side', 'marichi-iv', 'Only attempt the half-lotus leg once it''s comfortable on its own, without the added twist. Use a strap to bridge the hands behind the back if the full bind isn''t accessible yet. Keep breathing steadily rather than holding the breath through the bind.', 'Forcing the half-lotus foot into position before the hip is ready, risking knee strain. Rounding the spine to chase the bind instead of rotating evenly. Holding the breath while concentrating on the difficult shape.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS043', 'Deeply opens the hips and shoulders'),
    ('AS043', 'Increases spinal rotation'),
    ('AS043', 'Stimulates abdominal organs and digestion'),
    ('AS043', 'Builds focus and body awareness'),
    ('AS043', 'Improves flexibility for advanced binds');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS043', 'Only attempt once Marichyasana I and III and half-lotus are comfortable'),
    ('AS043', 'Avoid with knee, hip, or shoulder injury'),
    ('AS043', 'Never force the half-lotus foot placement'),
    ('AS043', 'Avoid during pregnancy');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS043', 'Manipura (Solar Plexus Chakra)');

-- AS044 — Bharadvaja's Twist (Bharadvajasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS044', 6, 'Bharadvajasana', 'Bharadvaja''s Twist', 'Beginner', 'A gentle seated twist named after the sage Bharadvaja, with both legs folded to one side and the torso rotating in the opposite direction, commonly used as an accessible introduction to seated twists.', '1. Sit with legs extended, then bend both knees and swing the feet to rest beside one hip.
2. Ground both sitting bones evenly on the floor.
3. Inhale to lengthen the spine, then exhale to rotate the torso away from the legs.
4. Place one hand on the floor behind you and the other on the opposite knee or thigh for leverage.
5. Hold for several breaths, then release and repeat on the other side.', 'Obliques, Spine, Hips', 'Hold for 30-45 seconds per side', 'bharadvajas-twist', 'Sit on a folded blanket if your sitting bones don''t stay grounded evenly. Keep both hips heavy on the floor rather than lifting one as you twist. Use the hand on the floor for gentle leverage, not to yank the twist deeper.', 'Letting one hip lift off the floor as the twist deepens. Twisting mainly from the neck and shoulders instead of the torso. Forcing the twist further than the spine comfortably allows.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS044', 'Gently stretches the spine and hips'),
    ('AS044', 'Improves digestion'),
    ('AS044', 'Relieves lower back tension'),
    ('AS044', 'Accessible entry point for deeper twists'),
    ('AS044', 'Calms the mind');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS044', 'Avoid with acute lower back injury'),
    ('AS044', 'Keep both sitting bones grounded rather than leaning to one side'),
    ('AS044', 'Avoid forcing the twist beyond a comfortable range'),
    ('AS044', 'Use a cushion under the hips if they don''t reach the floor comfortably');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS044', 'Manipura (Solar Plexus Chakra)');

-- AS045 — Half Lord of the Fishes Pose (Ardha Matsyendrasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS045', 6, 'Ardha Matsyendrasana', 'Half Lord of the Fishes Pose', 'Intermediate', 'A seated spinal twist named after the sage Matsyendra, with one leg crossed over the other and the torso rotating toward the raised knee, widely practiced to improve spinal mobility.', '1. Sit with legs extended, bend one knee and cross the foot over the opposite thigh.
2. Bend the other leg, bringing the heel close to the hip.
3. Inhale to lengthen the spine, then exhale to rotate toward the raised knee.
4. Hug the raised knee with the opposite arm or hook the elbow outside it.
5. Place the other hand on the floor behind you for support.
6. Hold for several breaths, then release and repeat on the other side.', 'Obliques, Spine, Hips, Shoulders', 'Hold for 20-30 seconds per side', 'half-lord-of-the-fishes', 'Keep the bottom leg''s knee comfortable - bend it more, or extend it straight if crossing the top leg fully is uncomfortable. Sit tall through the crown of the head before adding the twist. Use the back hand on the floor for support rather than collapsing backward.', 'Rounding the back to force a deeper twist instead of rotating with a long spine. Letting the raised knee collapse toward the midline. Twisting from the shoulders and neck rather than the torso.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS045', 'Improves spinal flexibility and rotation'),
    ('AS045', 'Stimulates the digestive organs'),
    ('AS045', 'Stretches the hips and shoulders'),
    ('AS045', 'Relieves back tension'),
    ('AS045', 'Energizes the body');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS045', 'Avoid with acute spinal or disc injury'),
    ('AS045', 'Avoid with knee injury when crossing the leg'),
    ('AS045', 'Rotate gradually rather than forcing the twist'),
    ('AS045', 'Avoid during pregnancy');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS045', 'Manipura (Solar Plexus Chakra)');

-- AS046 — Lord of the Fishes Pose (Matsyendrasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS046', 6, 'Matsyendrasana', 'Lord of the Fishes Pose', 'Advanced', 'A full seated spinal twist with the bottom leg folded into half-lotus, offering a deeper rotation than its half variation and demanding greater hip flexibility.', '1. Sit with legs extended, fold one leg into half-lotus with the foot resting on the opposite hip crease.
2. Cross the other foot over the half-lotus knee, planting it flat on the floor.
3. Inhale to lengthen the spine, then exhale to rotate toward the raised knee.
4. Wrap the arm around the raised knee or bind behind the back if accessible.
5. Hold for several breaths, then release and repeat on the other side.', 'Hips, Obliques, Spine, Shoulders', 'Hold for 15-20 seconds per side', 'lord-of-the-fishes', 'Only attempt this once Ardha Matsyendrasana and half-lotus both feel steady and comfortable. Use a strap to help bridge the bind if the hands can''t reach each other yet. Keep the spine lengthening upward throughout the twist, not just rotating.', 'Forcing the half-lotus foot into place before the hip is properly warmed up. Collapsing the chest forward instead of staying lifted through the twist. Rushing into the full bind before the shoulders are ready.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS046', 'Deeply improves spinal rotation'),
    ('AS046', 'Opens the hips for advanced poses'),
    ('AS046', 'Stimulates digestion and detoxification'),
    ('AS046', 'Builds focus and concentration'),
    ('AS046', 'Prepares the body for deeper binds');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS046', 'Only attempt once half-lotus and Ardha Matsyendrasana are comfortable'),
    ('AS046', 'Avoid with knee, hip, or spinal injury'),
    ('AS046', 'Never force the half-lotus foot placement'),
    ('AS046', 'Avoid during pregnancy');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS046', 'Manipura (Solar Plexus Chakra)');

-- AS047 — Half Lotus Pose (Ardha Padmasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS047', 10, 'Ardha Padmasana', 'Half Lotus Pose', 'Intermediate', 'A seated meditative pose in which one foot rests on the opposite thigh while the other leg remains tucked beneath, offering a gentler alternative to full Lotus Pose.', '1. Sit with legs extended, then bend one knee and place the foot on top of the opposite thigh.
2. Tuck the other foot beneath the opposite thigh or shin.
3. Rest the hands on the knees, palms up or down.
4. Lengthen the spine and relax the shoulders.
5. Hold for several breaths or minutes, then switch the leg position.', 'Hips, Knees, Ankles', 'Hold for 1-3 minutes per side', 'half-lotus', 'Sit on a cushion or folded blanket to tilt the pelvis forward if the knees sit high. Never force the top foot higher on the thigh than is comfortable. Alternate which leg goes on top each time you practice to build balanced flexibility.', 'Forcing the foot too high onto the thigh, which strains the knee joint. Letting the spine round instead of staying tall for meditation. Always placing the same leg on top, creating asymmetry over time.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS047', 'Opens the hips gradually'),
    ('AS047', 'Prepares the body for full Lotus Pose'),
    ('AS047', 'Encourages steady, upright posture'),
    ('AS047', 'Calms the mind for meditation'),
    ('AS047', 'Improves ankle and knee flexibility');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS047', 'Avoid with acute knee or hip injury'),
    ('AS047', 'Never force the foot onto the thigh'),
    ('AS047', 'Sit on a cushion if the hips are tight'),
    ('AS047', 'Alternate which leg is on top each practice');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS047', 'Muladhara (Root Chakra)');

-- AS048 — Lotus Pose (Padmasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS048', 10, 'Padmasana', 'Lotus Pose', 'Advanced', 'The classic cross-legged meditative posture in which both feet rest on the opposite thighs, prized in yoga tradition for the stability and stillness it offers the body and mind.', '1. Sit with legs extended, then bend one knee and place the foot on top of the opposite thigh.
2. Bend the other knee and place that foot on top of the first thigh.
3. Rest the hands on the knees in a mudra of choice.
4. Lengthen the spine and relax the shoulders away from the ears.
5. Hold for meditation or breathing practice, then release and switch the leg order.', 'Hips, Knees, Ankles', 'Hold for 3-5 minutes or longer', 'lotus', 'Build up through Easy Pose and Half Lotus first - don''t jump straight into full Lotus. Sit on a cushion to help the knees release toward the floor. Come out immediately if you feel sharp knee pain rather than pushing through it.', 'Forcing the feet into position before the hips are truly ready, risking knee injury. Rounding the lower back instead of sitting tall from the pelvis. Ignoring knee pain in an effort to hold the shape longer.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS048', 'Provides a stable base for long meditation'),
    ('AS048', 'Deeply opens the hips'),
    ('AS048', 'Calms the nervous system'),
    ('AS048', 'Improves posture and spinal alignment'),
    ('AS048', 'Traditionally associated with steadiness of mind');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS048', 'Only attempt once Half Lotus is comfortable on both sides'),
    ('AS048', 'Avoid with knee, ankle, or hip injury'),
    ('AS048', 'Never force the feet into position'),
    ('AS048', 'Come out immediately if sharp knee pain occurs');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS048', 'Muladhara (Root Chakra)');

-- AS049 — Goraksha Pose (Gorakshasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS049', 10, 'Gorakshasana', 'Goraksha Pose', 'Intermediate', 'A seated meditative pose with the soles of the feet pressed together and tucked beneath the body, used in hatha yoga traditions as a grounding preparation for pranayama.', '1. Sit with the soles of the feet together in front of the hips.
2. Draw the heels in and tuck the feet beneath the sitting bones, soles facing up.
3. Lower the hips to rest on the heels.
4. Rest the hands on the knees, lengthen the spine.
5. Hold for several breaths or minutes.', 'Ankles, Hips, Knees', 'Hold for 1-3 minutes', 'goraksha', 'Sit on a cushion between the heels if lowering all the way down feels too intense on the knees. Build up hold time gradually rather than sitting for long periods right away. Keep the spine tall rather than slumping once seated.', 'Sitting fully back onto tucked feet before the ankles are ready, risking strain. Ignoring numbness or tingling in the feet instead of adjusting or coming out. Rounding the back once the initial position is settled.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS049', 'Grounds the body for meditation and pranayama'),
    ('AS049', 'Stretches the ankles and tops of the feet'),
    ('AS049', 'Improves hip flexibility'),
    ('AS049', 'Encourages steady, upright posture'),
    ('AS049', 'Calms the mind');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS049', 'Avoid with acute knee or ankle injury'),
    ('AS049', 'Use a cushion under the hips if uncomfortable'),
    ('AS049', 'Come out if numbness or sharp pain occurs in the feet'),
    ('AS049', 'Build up hold time gradually');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS049', 'Muladhara (Root Chakra)');

-- AS050 — Bound Lotus Pose (Baddha Padmasana)
INSERT INTO Asanas (asana_id, category_id, sanskrit_name, english_name, difficulty, description, steps, muscles_targeted, duration, slug, beginner_tips, common_mistakes) VALUES
    ('AS050', 10, 'Baddha Padmasana', 'Bound Lotus Pose', 'Advanced', 'A deepened variation of Lotus Pose in which the arms cross behind the back to bind the opposite big toes, combining hip opening with shoulder and spinal engagement.', '1. Come into full Lotus Pose, feet resting on opposite thighs.
2. Reach one arm behind the back to catch the same-side big toe.
3. Reach the other arm behind the back to catch the other big toe, crossing the arms.
4. Lengthen the spine and lift through the chest.
5. Hold for several breaths, then release and switch the leg and arm order.', 'Shoulders, Hips, Spine', 'Hold for 20-30 seconds per side', 'bound-lotus', 'Master Lotus Pose and basic shoulder binds separately before combining them here. Use a strap between the hands if the arms can''t yet reach the toes. Keep breathing steadily rather than straining to force the bind.', 'Forcing the Lotus leg position before the hips are ready, risking knee strain. Straining the shoulders to force the bind instead of using a strap. Rounding the spine forward instead of lifting through the chest.');

INSERT INTO Benefits (asana_id, benefit) VALUES
    ('AS050', 'Deepens hip and shoulder opening'),
    ('AS050', 'Improves spinal posture'),
    ('AS050', 'Builds focus and body awareness'),
    ('AS050', 'Prepares the body for advanced binds'),
    ('AS050', 'Stretches the chest and shoulders');

INSERT INTO Precautions (asana_id, precaution) VALUES
    ('AS050', 'Only attempt once Lotus Pose and shoulder binds are comfortable'),
    ('AS050', 'Avoid with knee, hip, or shoulder injury'),
    ('AS050', 'Never force the bind - use a strap if the hands don''t reach'),
    ('AS050', 'Come out immediately if sharp knee pain occurs');

INSERT INTO Chakra_Information (asana_id, chakra_name) VALUES
    ('AS050', 'Muladhara (Root Chakra)');

COMMIT;