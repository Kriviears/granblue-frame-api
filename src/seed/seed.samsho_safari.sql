BEGIN;

TRUNCATE
  info,
  notes,
  moves,
  users,
  characters;

INSERT INTO characters (name, thumbnail, banner)
VALUES
  ('Gran', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/gran/gran.jpg', 'Gran Banner'),
  ('Katalina', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/katalina/katalina.jpg', 'Katalina Banner'),
  ('Charlotta', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/charlotta/charlotta.jpg', 'Charlotta Banner'),
  ('Lancelot','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/lancelot/lancelot.jpg','Lancelot Banner'),
  ('Percival','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/percival/percival.jpg','Percival Banner'),
  ('Ferry','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/ferry/ferry.jpg','Ferry Banner'),
  ('Lowain','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/lowain/lowain.jpg','Lowain Banner'),
  ('Ladiva','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/fastiva/ladiva.jpg','Ladiva Banner'),
  ('Metera','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/metera/metera.jpg','Metera Banner'),
  ('Zeta','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/zeta/zeta.jpg','Zeta Banner'),
  ('Vaseraga','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/vaseraga/vaseraga.jpg','Vaseraga Banner'),
  ('Beelzebub','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/beelzebub/beelzebub.jpg','Beelzebub Banner'),
  ('Narmaya','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/gbvs/narmaya/narmaya.jpg','Narmaya Banner'),
  

INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, super_cancel, properties, damage, attribute, special)
VALUES
  (1, 'Close A', 5, -5, -2, 19, true, true, '', 30, '', false),
  (1, 'Close B', 8, -12, -1, 29, true, true, '', 80, '', false),
  (1, 'Close C', 15, -28, -3, 45, false, true, '', 220, '', false),
  (1, 'Far A', 7, -5, -9, 28, true, true, '', 30, '', false),
  (1, 'Far B', 14, -12, -4, 38, false, true, '', 100, '', false),
  (1, 'Far C', 27, -16, -7, 73, false, true, '', 300, '', false),
  (1, 'Close 2A', 5, -5, -1, 18, true, true, '', 30,'', false),
  (1, 'Close 2B', 6, -12, 3, 23, true, true, '', 80, '', false),
  (1, 'Far 2A', 8, -5, -4, 24, true, true, '', 30, '', false),
  (1, 'Far 2B', 11, -12, 1, 30, true, true, '', 90, '', false),
  (1, '2C', 19, -28, -7, 53, true, true, '', 150, '', false),
  (1, '2D', 5, -3, 0, 17, false, false, '', 20, 'low', false),
  (1, '5D', 12, -6, -3, 27, false, false, '', 50, '', false),
  (1, '3D', 12, -22, 79, 57, false, false, '', 70, 'low', false),
  (1, '6D', 7, -7, -4, 22, false, false, '', 30, 'low', false),
  (1, 'JA', 8, null, null, null, false, false, '', 50, 'overhead', false),
  (1, 'JB', 10, null, null, null, false, false, '', 100, 'overhead', false),
  (1, 'JC', 13, null, null, null, false, false, '', 160, 'overhead', false),
  (1, 'JD', 8, null, null, null, false, false, '', 30, 'overhead', false),
  (1, '66A', 5, -12, -7, 32, false, false, '', 50, '', false),
  (1, '66B', 8, -35, -1, 29, true, true, '', 80, '', false),
  (1, '66C', 12, -35, -1, 29, false, true, '', 140, '', false),
  (1, '66D', 10, -31, 77, 51, false, false, 'Knockdown', 70, 'low', false),
  (1, '5C+D', 3, null, 20, 74, false, false, 'Scales combo x0.8', null, 'throw', false),
  (1, '4C+D', 5, null, 25, 74, false, false, 'Scales combo x0.8', null, 'throw', false),
  (1, 'A+B', 1, null, null, 38, false, false, 'Invincible frames 1-10', null, '', false),
  (1, '236A+B', 2, null, null, 46, false, false, '', null, '', true),
  (1, 'B+C', 20, -11, 2, 43, false, false, '', 70, 'overhead', false),
  (1, '236A', 33, -5, null, 57, false, false, 'Knockdown', null, '', true),
  (1, '236B', 35, -14, null, 68, false, false, 'Knockdown', null, '', true),
  (1, '236C', 37, -24, null, 80, false, false, 'Knockdown', null, '', true),
  (1, '623A', 7, -30, 91, 58, false, false, 'Knockdown', 100, '', true),
  (1, '623B', 7, -51, 86, 78, false, false, 'Knockdown', 120, '', true),
  (1, '623C', 7, -71, 84, 100, false, false, 'Knockdown', 180, '', true),
  (1, '623SP', 7, -71, 98, 100, false, false, 'Knockdown', 210, '', true),
  (1, 'dash 623A', 7, -30, 91, 58, false, false, 'Knockdown', 100, '', true),
  (1, 'dash 623B', 7, -50, 86, 78, false, false, 'Invincible frames 1-8, Knockdown', 120, '', true),
  (1, 'dash 623C', 7, -71, 84, 100, false, false, 'Invincible frames 1-8, Knockdown', 180, '', true),
  (1, 'dash 623C(R)', 7, -71, 98, 100, false, false, 'Invincible frames 1-8, Knockdown', 210, '', true),
  (1, '421A', 25, -25, 46, 81, false, false, 'Knockdown', 100, 'overhead', true),
  (1, '421B', 26, -25, 46, 85, false, false, 'Knockdown', 120, 'overhead', true),
  (1, '421C', 33, -25, 46, 92, false, false, 'Knockdown', 180, 'overhead', true),
  (1, '214D', 15, -16, 95, 43, false, false, 'Knockdown', 80, '', true),
  (1, '236B+C', 14, -41, 68, null, false, false, 'Knockdown', 490, '', true),
  (1, '641236C+D', 20, -45, 54, null, false, false, 'Invincible frames 1-10, Knockdown', 700, '', true),

  INSERT INTO moves (character_id, command, damage, attribute, startUp, recovery, onHit, onBlock, cancel, super_cancel, properties, special)
VALUES
  (2, 'Close A', 30, '', 5, null, 1, -5, true, true, '', false),
  (2, 'Close B', 80, '', '6', 29, -2, -12, true, true, '', false),
  (2, 'Close C', 200, '', 14, 53, 2, -28, false, false, '', false),
  (2, '5A', 40, '', 7, 22, -3, -5, true, true, '', false),
  (2, '5B', 100, '', 13, 38, -5, -12, true, true, '', false),
  (2, '5C', 240, '', 15, 53, -2, -16, false, false, '', false),
  (2, '5D', 50, '', 11, 24, -1, -4, false, false, '', false),
  (2, '2A', 30, '', 6, 18, 0, -5, true, true, '', false),
  (2, '2B', 90, 'low', 12, null, -2, -7, false, false, '', false),
  (2, '2C', 160, '', 13, 48, -8, -28, false, false, '', false),
  (2, '2D', 20, 'low', 6, 18, 0, -3, false, false, '', false),
  (2, '3D', 70, 'low', 12, null, 99, -11, false, false, '', false),
  (2, '6D', 60, '', 11, 34, 103, -11, false, false, '', false),
  (2, '66A', 30, '', 4, , -4, -19, false, false, '', false),
  (2, '66B', 100, '', 9, ?, -7, -35, false, false, '', false),
  (2, '66C', 140, '', 9, ?, 64, -26, false, false, '', false),
  (2, '66D', 70, '', 6, ?, 100, -8, false, false, 'knockdown', false),
  (2, 'j.A', 30, 'overhead', 5, null, null, null, false, false, '', false),
  (2, 'j.B', 100, 'overhead', 6, null, null, null, false, false, '', false),
  (2, 'j.C', 150, 'overhead', 10, null, null, false, false, '', false),
  (2, 'j.D', 30, 'overhead', 9, null, null, false, false, '', false),
  (2, '1/2/3 j.D', 40, 'overhead', 13, null, null, false, false, 'knocksdown on hit', false),
  (2, 'Air close 6D', 96, 'throw', 4, null, null, false, false, '', false),
  (2, '5C+D', 0, null, 3, null, 20, null, false, false, 'Scales combo x0.8', false),
  (2, '4C+D', 0, null, 5, null, 25, null, false, false, 'Scales combo x0.8', false),
  (2, 'A+B', null, null, 1, 16, null, null, null, null, 'Invincible frames 1-10, strike invincible frames 10-16', false),
  (2, '236A+B', 2, null, null, 46, false, false, '', null, '', true),
  (2, 'B+C', 80, 'overhead', 20, null, 1, -12, false, false, 'overhead', false),
  (2, '412A', 80, 'low', 10, null, null, -20, null, null, '', true),
  (2, '412B', 100, 'low', 16, null, null, -24, null, null, '', true),
  (2, '412C', 120, 'low', 24, null, null, -29, null, null, '', true),
  (2, 'Rage 412C', 180, 'low', 17, null, null, -29, null, null, 'Farther ranges hit fewer times for less damage', true),
  (2, '421A', 80, 'mid', 11, null, -6, -13, null, null, 'Reflects Projectiles', true),
  (2, '421B', 110, 'mid', 13, null, -7, -14, null, null, 'Reflects Projectiles', true),
  (2, '421C', 140, 'mid', 18, null, -8, -15, null, null, 'Reflects Projectiles', true),
  (2, 'S or D followup', 50, 'mid', 5, null, 103, -17, null, null, 'After the last attack of Kamui Rimuse (421x), you can input another button to do one final swipe that steps forward and that knocks down on hit.', true),
  (2, '214A', 70, 'mid', 21, null, null, -14, null, null, '', true),
  (2, '214B', 70, 'mid', 23, null, null, -12, null, null, '', true),
  (2, '214C', 70, 'mid', 25, null, null, -10, null, null, '', true),
  (2, '214D', null, null, null, null, null, null, null, null, 'Hold onto the hawk', true),
  (2, 'Cling A', 30, 'overhead', 5, null, null, null, null, null, 'From clinging on Mamahaha', true),
  (2, 'Cling B', 100, 'overhead', 6, null, null, null, null, null, 'From clinging on Mamahaha', true),
  (2, 'Cling C', 150, 'overhead', 7, null, null, null, null, null, 'From clinging on Mamahaha', true),
  (2, 'Cling D', 40, 'overhead', 13, null, null, -3, null, null, 'Drop from Mamahaha', true),
  (2, 'Cling B+C', 140, 'overhead', 6, null, null, -16, null, null, 'Dive from clinging on Mamahaha', true),
  (2, 'Cling B+C (rage)', 192, 'overhead', 6, null, null, -16, null, null, 'Dive from clinging on Mamahaha', true),
  (2, '623SP', 7, -71, 98, 100, false, false, 'Knockdown', 210, '', true),
  (2, '236B+C', 408, 'mid', 8, null, null, -91, null, null, '1 frame to hop onto Mamahaha then 7 frames to dive down', true),
  (2, '641236C+D', 650, 'mid', 30, null, null, -55, null, null, 'Half screen', true)

  INSERT INTO moves (character_id, command, damage, attribute, startUp, recovery, onHit, onBlock, cancel, super_cancel, properties, special)
VALUES
  (3, '5A', 40, '', 10, null, -2, -5, false, false, '', false),
  (3, '5B', 90, '', 13, null, -3, -12, false, false, '-7 on block when opponent is disarmed', false),
  (3, '5C', 180, '', 18, null, -9, -28, false, false, '-13 on block when opponent is disarmed', false),
  (3, '2A', 40, '', 9, null, -5, -5, false, false, '-9 on block when opponent is disarmed', false),
  (3, '2B', 90, '', 12, null, 4, -12, false, false, '0 on block when opponent is disarmed', false),
  (3, '2C', 190, '', 17, null, -5, -28, false, false, '-9 on block when opponent is disarmed', false),
  (3, 'Close 5A', 30, '', 6, null, 1, -2, true, true, '', false),
  (3, 'Close 5B', 80, '', 12, null, -1, -12, true, true, '-5 on block when opponent is disarmed', false),
  (3, 'Close 5C', 200, '', 20, null, -4, -28, false, false, '-8 on block when opponent is disarmed', false),
  (3, 'Close 2A', 30, '', 7, null, 2, -1, true, true, '', false),
  (3, 'Close 2B', 80, '', 7, null, 0, -12, true, true, '-4 on block when opponent is disarmed', false),
  (3, '5D', 40, '', 7, null, -5, -8, false, false, 'Can be spaced to be as low as 0 on block. Low crushes and can go over certain projectiles', false),
  (3, '6D', 40, 'low', 11, 35, 101, -15, true, true, '', false),
  (3, '2D', 20, 'low', 5, 20, -3, -6, false, false, '', false),
  (3, '3D', 60, 'low', 7, 38, null, -15, false, false, 'Knockdown', false),
  (3, '66A', 40, '', 5, 22, -5, -8, false, false, '', false),
  (3, '66B', 80, '', 9, 33, -4, -35, false, false, '', false),
  (3, '66C', 140, '', 15, 53, null, -10, false, false, 'knockdown', false),
  (3, '66D', 60, 'low', 8, 38, null, -14, false, false, 'knockdown', false),
  (3, 'j.A', 30, 'high', 8, null, null, null, false, false, '', false),
  (3, 'j.B', 90, 'high', 10, null, null, null, false, false, '', false),
  (3, 'j.C', 140, 'high', 13, null, null, null, false, false, '', false),
  (3, 'j.D', 30, 'high', 8, null, null, null, false, false, '', false),
  (3, 'B+C', 72, 'high', 20, 44, null, -12, false, false, '', false),
  (3, '623A', 100, '', 6, 58, null, -37, false, false, 'Invincibility frames ', true),
  (3, '623B', 120, '', 11, 75, null, -37, false, false, '', true),
  (3, '623C', 160, '', 11, 92, null, -37, false, false, '', true),
  (3, '6A mash', 100, '', 27, 75, null, -14, false, false, '', true),
  (3, '6B mash', 130, '', 30, 86, null, -21, false, false, '', true),
  (3, '6C mash', 160, '', 34, 97, null, -26, false, false, '', true),
  (3, '236A', 50, '', 40, 67, null, -8, false, false, '', true),
  (3, '236B', 50, '', 46, 75, null, -10, false, false, '', true),
  (3, '236C', 50, '', 45, 77, null, -13, false, false, '', true),
  (3, '236C Rage', 50, '', 45, 77, null, -3, false, false, '', true),
  (3, '214A', 110, '', 23, 49, null, -20, false, false, '', true),
  (3, '214B', 110, '', 30, 56, null, -20, false, false, '', true),
  (3, '214C', 110, '', 35, 66, null, -20, false, false, '', true),
  (3, '236D', 120, 'low', 18, 58, null, -25, false, false, 'can be bursted between the first and second hit', true),
  (3, '236B+C', 372, '', 8, null, null, -48, false, false, '', true),
  (3, '641236C+D', 650, '', 29, null, null, -45, false, false, '', true),

  INSERT INTO moves (character_id, command, damage, attribute, startUp, recovery, onHit, onBlock, cancel, super_cancel, properties, special)
VALUES
  (4, '5A', 30, '', 7, 19, 0, -3, true, true, '', false),
  (4, '5B', 100, '', 12, 51, -3, -13, false, false, '', false),
  (4, '5C', 240, '', 18, 73, 2, -12, false, false, '', false),
  (4, '2A', 30, '', 5, 16, 1, -2, true, true, '', false),
  (4, '2B', 90, 'low', 15, 58, -7, -17, false, false, '', false),
  (4, '2C', 180, '', 25, 73, -10, -20, false, false, '', false),
  (4, 'Close 5A', 30, '', 7, 19, 0, -3, true, true, '', false),
  (4, 'Close 5B', 80, '', 10, 34, -2, -12, true, true, '', false),
  (4, 'Close 5C', 200, '', 19, 48, -2, -28, false, false, '', false),
  (4, 'Close 2A', 30, '', 5, 16, 1, -2, true, true, '', false),
  (4, 'Close 2B', 100, '', 12, 35, -1, -12, false, false, '', false),
  (4, 'Close 2C', 200, '', 15, 79, -5, -29, false, false, '', false),
  (4, '5D', 50, '', 9, 32, -3, -6, false, false, '', false),
  (4, '6D', 30, 'high', 29, 49, 82, -5, false, false, 'Knockdown', false),
  (4, '2D', 20, 'low', 6, 19, -1, -4, false, false, '', false),
  (4, '3D', 70, 'low', 12, 40, 96, -12, false, false, 'Knockdown', false),
  (4, '66A', 40, '', 5, 27, -2, -9, false, false, '', false),
  (4, '66B', 100, 'high', 24, 43, null, -35, false, false, 'Knockdown', false),
  (4, '66C', 150, 'high', 12, 53, null, -19, false, false, 'Knockdown', false),
  (4, '66D', 70, 'low', 12, 39, 97, -11, false, false, 'Knockdown', false),
  (4, 'j.A', 30, 'high', 7, null, null, null, false, false, '', false),
  (4, 'j.B', 100, 'high', 13, null, null, null, false, false, '', false),
  (4, 'j.C', 150, 'high', 14, null, null, null, false, false, '', false),
  (4, 'j.D', 30, 'high', 11, null, null, null, false, false, '', false),
  (4, 'j.2D', 120, 'high', 3, null, null, null, false, false, '', true),
  (4, 'j.1D 3D', 60, 'high', 11, null, null, null, false, false, 'Knockdown', true),
  (4, '5B+C', 60, 'high', 21, 44, null, -11, false, false, 'Knockdown', false),
  (4, '236A', 110, '', 35, 77, null, -12, false, false, 'Knockdown', true),
  (4, '236B', 110, '', 40, 89, null, -21, false, false, 'Knockdown', true),
  (4, '236C', 110, '', 44, 100, null, -23, false, false, '', true),
  (4, 'j.236A', 30, 'high', 8, null, null, null, false, false, 'Knockdown', true),
  (4, 'j.236B', 130, 'high', 8, null, null, null, false, false, 'Knockdown', true),
  (4, 'j.236C', 130, 'high', 8, null, null, null, false, false, 'Knockdown', true),
  (4, '623A', 140, '', 27, 82, 87, -37, false, false, 'Knockdown', true),
  (4, '623B', 140, '', 27, 89, 79, -44, false, false, 'Knockdown', true),
  (4, '623C', 140, '', 27, 93, 76, -48, false, false, 'Knockdown', true),
  (4, 'Rage 623C', 190, '', 27, 93, 99, -44, false, false, 'Knockdown', true),
  (4, '236D', null, null, 35, 54, 13, 0, false, false, 'Soul of the beast', true),
  (4, '214D', null, null, null, null, null, null, false, false, 'Shadow Sucker', true),
  (4, '623D', 150, 'throw', 7, 54, null, null, false, false, 'Knockdown command grab', true),
  (4, '421S', null, '', null, 35, null, null, false, false, 'Shadow Faint all versions', true),
  (4, '236B+C', 384, 'mid', 24, 115, null, -62, false, false, 'Invincible frames 2-19', true),
  (4, '641236C+D', 640, 'mid', 29, 115, null, -54, false, false, 'Invincible frames 1-10', true),

  INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, attribute, super_cancel, damage, properties, special)
VALUES
  (5, 'Close A', 5, -5, -2, 19, true, '', true, 30, '', false),
  (5, 'Close B', 7, -12, -2, 29, true, '', true, 80, '', false),
  (5, 'Close C', 22, -29, null, 81, false, '', false, 225, 'knockdown', false),
  (5, '5B', 11, -12, -9, 60, false, '', true, 110, '', false),
  (5, '5C', 20, -16, null, 60, false, '', true, 220, 'knockdown', false),
  (5, '2A', 6, -5, 0, 18, true, '', true, 30, '', false),
  (5, 'Close 2B', 11, -12, -9, 40, true, '', true, 90, '', false),
  (5, 'Close 2C', 20, -28, null, 72, false, 'low', false, 200, 'knockdown', false),
  (5, '2C', 25, -29, null, 70, false, '', false, 300, '', false),
  (5, '2D', 6, -7, -4, 22, false, 'low', '', 20, '', false),
  (5, '5D', 13, -7, -4, 22, false, '', '', 50, '', false),
  (5, '3D', 9, -14, null, 31, false, 'low', false, 70, 'knockdown', false),
  (5, '6D', 17, -17, null, 44, false, 'low', '', 60, 'knockdown', false),
  (5, '66A', 5, -19, -3, 21, false, '', true, 30, '', false),
  (5, '66B', 8, -36, -2, 47, false, '', true, 110, '', false),
  (5, '66C', 14, -24, null, 61, false, 'low', false, 150, 'knockdown', false),
  (5, '66D', 20, -27, null, 67, false, 'high', false, 70, 'knockdown', false),
  (5, '236A', 12, -55, null, 64, false, '', false, 110, 'knockdown', true),
  (5, '236B', 15, -54, null, 70, false, '', false, 130, '', true),
  (5, '236C', 17, -63, null, 91, false, '', false, 180, 'knockdown', true),
  (5, 'Rage 236C', 17, -51, null, 122, false, '', false, null, 'knockdown', true),
  (5, '214A', 41, -20, -8, null, false, null, false, 80, '', true),
  (5, '>level 2', 14, null, null, null, false, '', false, 160, 'Knockdown', true),
  (5, '>level 3', 38, null, null, null, false, 'unblockable', false, 200, 'knockdown', true),
  (5, '214B', 45, -20, -8, null, false, null, false, 90, '', true),
  (5, '>level 2', 14, null, null, null, false, '', false, 220, 'Knockdown', true),
  (5, '>level 3', 38, null, null, null, false, 'unblockable', false, 250, 'knockdown', true),
  (5, '214C', 49, -20, -8, null, false, null, false, 100, '', true),
  (5, '>level 2', 14, null, null, null, false, '', false, 180, 'Knockdown, stuns on hit', true),
  (5, '>level 3', 38, null, null, null, false, 'unblockable', false, 500, 'knockdown, stuns on hit', true),
  (5, '236D', 18, -22, 50, 60, false, '', false, 110, 'knockdown', true),
  (5, '623C', 6, null, 58, 55, false, 'throw', false, 210, 'knockdown', true),
  (5, 'Unarmed 214A or B', 85, -60, null, null, false, '', false, 30, 'knockdown', true),
  (5, 'Unarmed 214C', 85, null, null, null, false, 'throw', false, 300, 'knockdown', true),
  (5, '236B+C', 13, -26, null, null, false, '', false, 340, 'knockdown', true),
  (5, '641236C+D', 21, -42, null, null, false, '', false, 680, 'Invincibility frames 1-10', true),


  INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, attribute, super_cancel, damage, properties, special)
 VALUES
   (6, '5A', 8, -5, -6, 26, true, '', true, 40, '', false),
   (6, 'Close B', 10, -12, -2, 32, false, '', true, 100, '', false),
   (6, 'Close C', 12, -28, -4, 43, false, '', true, 200, '', false),
   (6, '5B', 8, -12, -9, 43, false, '', true, 200, '', false),
   (6, '5C', 13, -12, -9, 43, false, '', true, 100, '', false),
   (6, '2A', 8, -5, -5, 25, true, '', true, 40, '', false),
   (6, 'c.2B', 14, -14, -5, 33, false, '', true, 100, '', false),
   (6, '2B', 12, -18, null, 45, false, 'low', false, 90, 'knockdown', false),
   (6, '2C', 15, -36, null, 54, false, 'low', false, 200, '', false),
   (6, '2D', 10, -8, -5, 27, false, '', false, 30, '', false),
   (6, '5D', 8, -9, -6, 27, true, '', false, 40, '', false),
   (6, '3D', 10, -17, null, 43, false, '', false, 70, 'knockdown', false),
   (6, '6D', 10, -21, null, 55, false, '', false, 50, 'knockdown', false),
   (6, 'jA', 8, null, null, null, false, 'high', false, 30, '', false),
   (6, 'jB', 9, null, null, null, false, 'high', false, 100, '', false),
   (6, 'jC', 12, null, null, null, false, 'high', false, 110, '', false),
   (6, 'jD', 7, null, null, null, false, 'high', false, 30, '', false),
   (6, 'j 2A', 18, -11, null, 51, false, 'high', false, 90, 'knockdown', false),
   (6, 'j 2B', 21, -12, null, 61, false, 'high', false, 190, 'knockdown', false),
   (6, 'j 2C', 24, -15, null, 78, false, 'high', false, 290, 'knockdown', false),
   (6, '66A', 9, -19, -9, 30, false, '', true, 40, '', false),
   (6, '66B', 23, -18, null, 56, false, 'high', false, 80, 'knockdown', false),
   (6, '66C', 11, -17, null, 48, false, '', false, 130, 'knockdown', false),
   (6, '66D', 6, -9, null, 31, false, '', false, 60, 'knockdown', false),
   (6, '214A', 18, -11, null, 51, false, '', false, 100, 'knockdown', true),
   (6, '214B', 21, -12, null, 61, false, '', false, 110, 'knockdown', true),
   (6, '214C', 24, -15, null, 78, false, '', false, 120, 'knockdown', true),
   (6, 'mash 6A', 10, -13, null, null, false, '', false, 90, 'knockdown', true),
   (6, 'mash 6B', 14, -14, null, null, false, '', false, 120, 'knockdown', true),
   (6, 'mash 6C', 10, -29, null, null, false, '', false, 160, 'knockdown', true),
   (6, 'Rage mash 6C', 10, -35, null, null, false, '', false, 185, 'knockdown', true),
   (6, '63214D', 41, -59, null, null, false, '', false, 100, 'knockdown', true),
   (6, '236D', 8, null, null, 61, false, 'throw', false, 160, 'knockdown', true),
   (6, '236B+C', 9, -21, null, null, false, '', false, 476, 'knockdown', true),
   (6, '641236C+D', 27, -31, null, null, false, '', false, 700, 'knockdown', true),

  INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, attribute, super_cancel, damage, properties, special)
VALUES
  (7, 'Close A', 5, -5, 1, 16, true, '', true, 30, '', false),
  (7, 'Close B', 8, -12, -1, 29, true, '', true, 80, '', false),
  (7, 'Close C', 16, -28, -4, 47, false, '', true, 200, '', false),
  (7, '5A', 9, -5, -4, 25, true, '', true, 40, '', false),
  (7, '5B', 13, -12, -8, 41, false, '', true, 110, '', false),
  (7, '5C', 24, -28, -7, 62, false, '', true, 250, '', false),
  (7, '2A', 8, -5, -3, 23, true, '', true, 30, '', false),
  (7, '2B', 12, -12, -5, 37, true, '', true, 90, '', false),
  (7, '2C', 18, -28, 88, 54, false, 'low', false, 180, 'knockdown', false),
  (7, '2D', 5, -3, 0, 17, false, 'low', false, 20, '', false),
  (7, '5D', 13, -6, -3, 28, true, '', false, 50, '', false),
  (7, '3D', 12, -20, null, 48, false, 'low', false, 70, 'knockdown', false),
  (7, '6D', 9, -10, -4, 28, false, 'low', false, 40, '', false),
  (7, 'j.A', 9, null, null, null, false, 'overhead', false, 40, '', false),
  (7, 'j.B', 11, null, null, null, false, 'overhead', false, 100, '', false),
  (7, 'j.C', 13, null, null, null, false, 'overhead', false, 150, '', false),
  (7, 'j.D', 7, null, null, null, false, 'overhead', false, 30, '', false),
  (7, '66A', 6, -19, -2, 20, false, '', true, 30, 'properties', false),
  (7, '66B', 18, -35, null, 39, false, 'low', false, 140, 'knockdown', false),
  (7, '66C', 26, -22, null, 70, false, 'overhead', false, 150, 'knockdown', false),
  (7, '66D', 9, -19, null, 44, false, 'low', false, 70, 'knockdown', false),
  (7, '236A', 13, -21, null, 61, false, '', false, 60, 'knockdown', false),
  (7, '236B', 13, -24, null, 64, false, '', false, 60, 'knockdown', false),
  (7, '236C', 13, -27, null, 67, false, '', false, 60, 'knockdown', false),
  (7, '623A,B, or C', 10, null, 67, 53, false, 'throw', false, 170, '', false),
  (7, '63214 A+D', 51, -48, null, null, false, 'overhead', false, 120, 'knockdown', false),
  (7, '63214 B+D', 60, -48, null, null, false, 'overhead', false, 120, 'knockdown', false),
  (7, '214A', 27, 2, null, 55, false, '', false, 90, 'knockdown', false),
  (7, '214A Rage', 25, 3, null, 55, false, '', false, 130, 'knockdown', false),
  (7, '214B', 36, 5, null, 59, false, '', false, 40, 'knockdown', false),
  (7, '214C', 89, 27, null, 63, false, '', false, 80, 'knockdown', false),
  (7, '214D', 34, -25, null, null, false, '', false, 80, 'knockdown', false),
  (7, '63214 63214 A+D', null, -48, null, null, false, 'high', false, 120, 'knockdown', false),
  (7, '63214 63214 B+D', null, -48, null, null, false, 'high', false, 120, 'knockdown', false),
  (7, '236B+C', 33, -78, null, null, false, '', false, 420, 'knockdown', false),
  (7, '641236 C+D', 29, -49, null, null, false, '', false, 640, 'knockdown', false),





--Template
--    INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, attribute, super_cancel, damage, properties, special)
-- VALUES
--   (7, 'move', start, block, hit, rec, cancel, 'guard', super, dam, 'properties', false),