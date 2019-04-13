/*INSERT INTO `home insurance` (`Home Policy ID`, `ID`, `Property Damage Amount`, `Fines`) 
					 VALUES ('1', '1', '100000', '0'),
							('2', '2', '100000', '0'),
                            ('3', '3', '150000', '0'),
                            ('4', '4', '100000', '500'),
                            ('5', '5', '100000', '0');

SELECT * FROM `home insurance`;*/

#proek
CREATE VIEW view1 AS SELECT DISTINCT `Last Name`, `City`, `Address`, `Phone Number` FROM `customer info`;

#selecz
SELECT * FROM view1 WHERE `City` = 'Los Angeles';

#natur zyed
SELECT `customer info`.`ID`, `customer info`.`Last Name`, `customer info`.`Phone Number`, `home insurance`.`Home Policy ID`, `home insurance`.`Fines`
	FROM `customer info`, `home insurance`
		WHERE `customer info`.`ID` = `home insurance`.`ID`;

#umov zyed
SELECT `customer info`.`ID`, `customer info`.`Last Name`, `customer info`.`Phone Number`, `home insurance`.`Home Policy ID`, `home insurance`.`Fines`
	FROM `customer info`, `home insurance`
		WHERE `customer info`.`ID` = `home insurance`.`ID` AND `Fines`<500;
