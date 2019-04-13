/*INSERT INTO `car insurance` (`Car Policy ID`, `ID`, `Make`, `Model`, `Year`, `Fees`, `Additional Driver`, `Liability Amount`, `Collision Damage Amount`) 
					 VALUES ('1', '1', 'Ford', 'Mustang', '2013', '0', '1', '200000', '200000'),
							('2', '2', 'Ford', 'Ascona', '1986', '500', '1', '50000', '50000'),
                            ('3', '3', 'Chevrolet', 'Camaro', '2000', '200', '0', '100000', '150000'),
                            ('4', '4', 'Porsche', '911', '1993', '0', '0', '100000', '100000'),
                            ('5', '5', 'Lada', '2109', '2001', '100', '0', '50000', '100000');
SELECT * FROM `car insurance`; */

DELIMITER |
CREATE PROCEDURE all_amounts (IN last_name CHAR(20))
	BEGIN
		SELECT `customer info`.ID, `Last Name`, `car insurance`.`Liability Amount`, `car insurance`.`Collision Damage Amount`, `home insurance`.`Property Damage Amount`, 
        `life insurance`.`Benefit Amount` FROM ((`customer info` INNER JOIN `car insurance`) INNER JOIN `home insurance`) INNER JOIN `life insurance`
        ON `customer info`.ID = `car insurance`.ID AND `customer info`.ID = `home insurance`.ID AND `customer info`.ID = `life insurance`.ID
        WHERE `Last Name` = last_name;
	END|
Delimiter ;

CALL all_amounts('Shmilyk');
