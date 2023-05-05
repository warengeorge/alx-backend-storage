-- a SQL script that creates a stored procedure, that computes 
-- and store the average weighted score for a student
DELIMITER $$

CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
    DECLARE total_score FLOAT DEFAULT 0;
    DECLARE total_weight FLOAT DEFAULT 0;
    DECLARE average_score FLOAT DEFAULT 0;
    
    -- calculate the total weighted score for the user
    SELECT SUM(score * weight) INTO total_score, SUM(weight) INTO total_weight
    FROM grades
    WHERE user_id = user_id;
    
    -- calculate the average weighted score for the user
    IF total_weight > 0 THEN
        SET average_score = total_score / total_weight;
    END IF;
    
    -- insert or update the average score for the user in the users table
    INSERT INTO users (id, average_score)
    VALUES (user_id, average_score)
    ON DUPLICATE KEY UPDATE average_score = average_score;
END $$

DELIMITER ;

