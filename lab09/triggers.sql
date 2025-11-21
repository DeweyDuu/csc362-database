DELIMITER //

CREATE TRIGGER min_pokemon
BEFORE DELETE ON pokemon
FOR EACH ROW
BEGIN 
    IF (SELECT COUNT(*) FROM pokemon
        WHERE trainer_id=OLD.trainer_id )<=1 THEN 
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You must carry at least 2 Pokemons for battle balanced';
    END IF;
END//

CREATE TRIGGER max_pokemon
BEFORE INSERT ON pokemon
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM pokemon
        WHERE trainer_id=NEW.trainer_id )>=6 THEN 
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You must carry less than 6 Pokemons for battle balanced';
    END IF;
END//

CREATE PROCEDURE trade_pokemon(
    IN pokemon_id_trade INT,
    IN from_trainer_id INT,
    IN to_trainer_id INT
)
BEGIN
    DECLARE pokemon_trainer INT;
    DECLARE exit handler for SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    SELECT trainer_id INTO pokemon_trainer
    FROM pokemon
    WHERE pokemon_id = pokemon_id_trade
    LIMIT 1;

    IF pokemon_trainer IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'ERROR: Pokemon not found in database';
    END IF;

    IF pokemon_trainer != from_trainer_id THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'ERROR: pokemon is not in the party yet cannot trade';
    END IF;
    
    IF (SELECT COUNT(*) FROM pokemon WHERE trainer_id = to_trainer_id) >= 6 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'ERROR: the trainer already has 6 pokemon no more trading';
    END IF;

    UPDATE pokemon
    SET trainer_id = to_trainer_id
    WHERE pokemon_id = pokemon_id_trade;

    COMMIT;
END //

DELIMITER ;



-- Test 1: addition
INSERT INTO pokemon (pokemon_species, pokemon_level, trainer_id, pokemon_is_in_party) VALUES 
('aa', 22, 1, TRUE),    -- Should work (Ash now has 3 pokemon)
('bb', 17, 1, TRUE),   -- Should work (Ash now has 4 pokemon)
('cc', 13, 1, TRUE),   -- Should work (Ash now has 5 pokemon)
('dd', 35, 1, TRUE),       -- Should work (Ash now has 6 pokemon)
('ee', 20, 1, TRUE);     -- Should fail (max_pokemon trigger - 7th pokemon)

-- Test 2: deletion
DELETE FROM pokemon WHERE pokemon_id = 2; -- Should fail (min_pokemon trigger - would leave Misty with 0 pokemon)

DELETE FROM pokemon WHERE pokemon_id = 6; -- Should work (delete one of the newly added pokemon)
DELETE FROM pokemon WHERE pokemon_id = 5; -- Should work  
DELETE FROM pokemon WHERE pokemon_id = 4; -- Should work
DELETE FROM pokemon WHERE pokemon_id = 3; -- Should work (now Ash has only 2 pokemon: Pikachu and Magicarp)
DELETE FROM pokemon WHERE pokemon_id = 1; -- Should fail (min_pokemon trigger - would leave only 1 pokemon)

-- Test 3: trade a Pokémon not owned by the trainer (should fail)
CALL trade_pokemon(2, 1, 3); -- Should fail (Misty owns Staryu, not Ash)

