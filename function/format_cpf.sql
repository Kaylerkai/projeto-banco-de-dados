-- -----------------------------------------------------
-- Função de formatação: Formatar o CPF e o CNPJ
-- INPUT:  04105178151
-- 
-- OUTPUT: 041.051.781-51
-- 
-- FORMAT_STR(PARAMS char(14)) => 041.051.781-51
-- -----------------------------------------------------
DELIMITER $$
CREATE FUNCTION STR_FORMAT(input_fn CHAR(14)) 
RETURNS VARCHAR(18)
DETERMINISTIC
NO SQL
	BEGIN
		IF LENGTH(input_fn) = 11 THEN
			RETURN CONCAT(SUBSTRING(input_fn, 1, 3), '.',
						  SUBSTRING(input_fn, 4, 3), '.',
						  SUBSTRING(input_fn, 7, 3), '-',
						  SUBSTRING(input_fn, 10, 2)
                         );

        ELSEIF LENGTH(input_fn) = 14 THEN
		   RETURN CONCAT(SUBSTRING(input_fn, 1, 2), '.',
                      SUBSTRING(input_fn, 3, 3), '.',
                      SUBSTRING(input_fn, 6, 3), '/',
                      SUBSTRING(input_fn, 9, 4), '-',
                      SUBSTRING(input_fn, 13, 2)
                     );
      ELSE
        RETURN NULL;
	  END IF;
 	END $$
-- END;
DELIMITER ;;