SELECT ID, `Phone number`, `Last Name` FROM `customer info` WHERE `Phone number` LIKE '0%'
	ORDER BY `Last Name` ASC;

SELECT ID, `Last Name` FROM `customer info` ORDER BY `Last Name` DESC;

SELECT `customer info`.`ID`, `customer info`.`Last Name`, `customer info`.`State`
	FROM (`customer info` INNER JOIN claims) INNER JOIN `home insurance`
		ON `customer info`.ID = claims.ID
			GROUP BY State;

/*
INSERT INTO `life insurance` (`Life Policy ID`, `ID`, `Benefit Amount`) 
					 VALUES ('1', '1', '200000'),
							('2', '2', '200000'),
                            ('3', '3', '500000'),
                            ('4', '4', '500000'),
                            ('5', '5', '200000');
SELECT * FROM `life insurance`;

INSERT INTO `payments` (`Payment Transaction ID`, `ID`, `Due Date`, `Payment Amount`) 
					 VALUES ('1', '1', '2019-05-07', '25000'),
							('2', '2', NULL, NULL),
                            ('3', '3', NULL, NULL),
                            ('4', '4', '2019-06-01', '5000'),
                            ('5', '5', '2019-05-24', '14000');

ALTER TABLE `payments`
    MODIFY `Due Date` DATE,
    MODIFY `Payment Amount` INT(10);

DELETE FROM `payments` WHERE (`Due Date`<'2020-01-01');
SELECT * FROM `payments`; */
