
SELECT * FROM `customer info` INNER JOIN `home insurance` 
	ON `customer info`.ID = `home insurance`.ID;


SELECT `customer info`.`ID`, `customer info`.`Last Name`, `customer info`.`Phone Number`, `home insurance`.`Home Policy ID`, `home insurance`.`Fines`
	FROM `customer info` LEFT JOIN `home insurance`
		ON `customer info`.`ID` = `home insurance`.`ID`;
        
/*INSERT INTO claims (`Claim Transaction ID`, `ID`, `Claim Amount`, `Claim Approved`) 
					 VALUES ('1', '1', '20000', '0'),
							('2', '2', '0', '0'),
                            ('3', '3', '0', '0'),
                            ('4', '4', '5000', '1'),
                            ('5', '5', '3000', '1');
                            
SELECT * FROM claims;*/

SELECT `customer info`.`ID`, `customer info`.`Last Name`, claims.`Claim Approved`
	FROM `customer info` INNER JOIN claims ON `customer info`.ID = claims.ID
		WHERE claims.`Claim Approved` = 1;
        
SELECT `customer info`.`ID`, `customer info`.`Last Name` FROM `customer info`
	WHERE NOT EXISTS
		(SELECT * FROM `home insurance` WHERE `customer info`.ID = `home insurance`.ID);
        
SELECT `Last Name`, `Phone number` AS `ph number`
	FROM `customer info`
		WHERE CHAR_LENGTH(`Phone number`)>=11 OR `Phone number` NOT REGEXP '[0-9]';