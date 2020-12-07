USE LEARNING;
delimiter //
create procedure fact(in A INT)
BEGIN
	DECLARE COUNT INT ;
    DECLARE F INT;
    SET COUNT=1;
    SET F=1;
    WHILE 
		F<=A DO
       SET COUNT = COUNT *F;
       SET F=F+1;
	END WHILE ;
	SELECT A AS NUMBER , COUNT AS FACTOR ;
END //

DELIMITER ;

CALL FACT(5);

DROP PROCEDURE IF EXISTS FACT;
DROP PROCEDURE IF exists EVEN_OR_ODD;
drop PROCEDURE IF EXISTS PRIME_OR_COMPOSITE;

DELIMITER //
CREATE procedure EVEN_OR_ODD(IN NUM INT)
BEGIN 
	IF NUM%2=0
    THEN SELECT 'THE NUMBER IS EVEN';
    ELSE 
    SELECT 'THE NUMBER IS ODD';
    END IF;
END//

DELIMITER ;

CALL EVEN_OR_ODD(5);

DELIMITER //
CREATE PROCEDURE PRIME_OR_COMPOSITE(IN A INT )
BEGIN
	DECLARE COUNT INT;
    DECLARE NUM INT;
    SET NUM=1;
    SET COUNT=0;
    WHILE NUM<=A DO
		IF A%NUM=0 THEN 
        SET COUNT =COUNT+1;
        END IF;
		SET NUM=NUM+1;
	END WHILE ;
    IF COUNT=0 THEN 
    SELECT 'THE NUMBER IS PRIME';
	ELSE 
    SELECT 'THE NUMBER IS COMPOSITE';
    END IF;
END //
DELIMITER ;

CALL PRIME_OR_COMPOSITE(12);

SHOW WARNINGS;

