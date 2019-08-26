ALTER TABLE moves
    DROP COLUMN IF EXISTS character_id;
    
ALTER TABLE notes
    DROP COLUMN IF EXISTS character_id;
    DROP COLUMN IF EXISTS user_id;