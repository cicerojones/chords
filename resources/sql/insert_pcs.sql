-- name: insert-pc-monochords<!
-- inserts one-note chords into pc_monochord_events table
INSERT INTO pc_monochord_events (pc1) VALUES (:pc1);

-- name: insert-pc-dyads<!
-- inserts two-note chords into pc_dyad_events table
INSERT INTO pc_dyad_events (pc1, pc2) VALUES (:pc1, :pc2);

-- name: insert-pc-trichords<!
-- inserts three-note chords into pc_trichord_events table
INSERT INTO pc_trichord_events (pc1, pc2, pc3) VALUES (:pc1, :pc2, :pc3);

-- name: insert-pc-tetrachords<!
-- inserts four-note chords into pc_tetrachord_events table
INSERT INTO pc_tetrachord_events (pc1, pc2, pc3, pc4) VALUES (:pc1, :pc2, :pc3, :pc4);

-- name: insert-pc-pentachords<!
-- inserts five-note chords into pc_pentachord_events table
INSERT INTO pc_pentachord_events (pc1, pc2, pc3, pc4, pc5) VALUES (:pc1, :pc2, :pc3, :pc4, :pc5);

-- name: insert-pc-hexachords<!
-- inserts six-note chords into pc_hexachord_events table
INSERT INTO pc_hexachord_events (pc1, pc2, pc3, pc4, pc5, pc6) VALUES (:pc1, :pc2, :pc3, :pc4, :pc5, :pc6);

