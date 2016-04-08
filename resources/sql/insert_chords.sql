-- name: insert-monochords<!
-- inserts one-note chords into monochord_events table
INSERT INTO monochord_events (midi1) VALUES (:midi1);

-- name: insert-dyads<!
-- inserts two-note chords into dyad_events table
INSERT INTO dyad_events (midi1, midi2) VALUES (:midi1, :midi2);

-- name: insert-trichords<!
-- inserts three-note chords into trichord_events table
INSERT INTO trichord_events (midi1, midi2, midi3) VALUES (:midi1, :midi2, :midi3);

-- name: insert-tetrachords<!
-- inserts four-note chords into tetrachord_events table
INSERT INTO tetrachord_events (midi1, midi2, midi3, midi4) VALUES (:midi1, :midi2, :midi3, :midi4);

-- name: insert-pentachords<!
-- inserts five-note chords into pentachord_events table
INSERT INTO pentachord_events (midi1, midi2, midi3, midi4, midi5) VALUES (:midi1, :midi2, :midi3, :midi4, :midi5);

-- name: insert-hexachords<!
-- inserts six-note chords into hexachord_events table
INSERT INTO hexachord_events (midi1, midi2, midi3, midi4, midi5, midi6) VALUES (:midi1, :midi2, :midi3, :midi4, :midi5, :midi6);

-- INSERT INTO pentachord_events (midi1, midi2, midi3, midi4, midi5) VALUES (:midi1, :midi2, :midi3, :midi4, midi5);
