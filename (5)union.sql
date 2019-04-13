CREATE TABLE `sql insurance group`.`customer info 1`
	AS SELECT `ID`, `Last Name`, `Credit Card`, `Exp Date` FROM `sql insurance group`.`customer info`
		WHERE `Exp Date` < '2021-10-01';

SELECT * FROM `customer info 1`;
        
CREATE TABLE `sql insurance group`.`customer info 2`
	AS SELECT `ID`, `Last Name`, `Credit Card`, `Exp Date` FROM `sql insurance group`.`customer info`
		WHERE `Exp Date` > '2021-01-01';

SELECT * FROM `customer info 2`;

#Ob
SELECT * FROM `customer info 1` 
	UNION SELECT * FROM `customer info 2`;

#Per
SELECT * FROM `customer info 1`
	WHERE ID IN (SELECT ID FROM `customer info 2`);

#Riz
SELECT * FROM `customer info 1`
	WHERE ID NOT IN (SELECT ID FROM `customer info 2`);

#Dek dob
SELECT * FROM `customer info 1`, `customer info 2`;
