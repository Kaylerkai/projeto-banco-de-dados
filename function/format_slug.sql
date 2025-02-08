-- -----------------------------------------------------
-- Função de formatação: criar slugs com base no titulo
-- INPUT:  O sobrinho do mago - Nárnia 1
-- 
-- OUTPUT: O-sobrinho-do-mago-naarnia-1
-- 
-- -----------------------------------------------------
DELIMITER $$
CREATE FUNCTION SLUG_FORMAT(input_fn VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
NO SQL
    BEGIN
		  DECLARE temp_slug VARCHAR(255);
      -- INPUT: (' Cem Anos De Solidão! ')
      SET temp_slug = TRIM(LOWER(input_fn));
      -- ('cem anos de solidão!')  
      SET temp_slug = REPLACE(temp_slug, ' ', '-');
      -- ('cem-anos-de-solidão!')
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[áàãâä]', 'a');
      -- ('cem-anos-de-solidao!')
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[éèêë]', 'e');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[íìîï]', 'i');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[óòõôö]','o');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[úùûü]', 'u');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[ñ]',    'n');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[ś]',    's');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[ç]',    'c');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '[^a-z0-9-]', '');
      SET temp_slug = REGEXP_REPLACE(temp_slug, '-+', '-');
      -- OUTPUT: ('cem-anos-de-solidao')
			RETURN temp_slug;
 	END $$
		-- END;
DELIMITER ;