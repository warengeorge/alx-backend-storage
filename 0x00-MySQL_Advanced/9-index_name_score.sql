-- a SQL script that creates an index based on the table 
-- and first letter of name 
CREATE INDEX idx_name_first_score ON names (name(1), score);
