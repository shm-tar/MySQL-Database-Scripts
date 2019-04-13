INSERT INTO `customer info` (`ID`, `First Name`, `Last Name`, `City`, `Address`, `State`, `Phone number`, `Credit Card`, `Exp Date`) 
					 VALUES ('1', 'Taras', 'Shmilyk', 'Zhmerynka', '123 Baker', 'Ukraine', '0505505342', '4938 1923 1239 1281', '2021-03-29');

INSERT INTO `customer info` (`ID`, `First Name`, `Last Name`, `City`, `Address`, `State`, `Phone number`, `Credit Card`, `Exp Date`) 
					 VALUES ('2', 'Ya', 'Ka', 'Kioto', 'Sorata st', 'Japan', '4536241233', '4488 4123 1539 1111', '2022-05-19'),
							('3', 'John', 'Snow', 'Winterfell', 'Tower of Joy', 'HBO', '3841094832', '9182 4635 2817 4421', '2048-03-23'),
                            ('4', 'Bruce', 'Banner', 'Los Angeles', '315 Hamel st', 'USA', '4798942783', '3394 3647 3899 9320', '2055-09-01');

INSERT INTO `customer info` (`ID`, `First Name`, `Last Name`, `City`, `Address`, `State`, `Phone number`, `Credit Card`, `Exp Date`) 
					 VALUES ('5', 'Eric', 'Hoho', 'San-Diego', 'Dull st', 'USA', '8489934672', '8494 3748 5656 3842', '2020-04-02'),
							('6', 'John', 'Doughlas', 'Stryi', 'Kyiv', 'Ukraine', '0506743892', '7778 9504 3776 3384', '2021-03-21'),
                            ('7', 'Bruce', 'Wayne', 'Los Angeles', 'Exit rd', 'USA', '4792212783', '0498 3737 8282 1192', '2019-09-01');

#UPDATE `customer info` SET City = 'Kyiv' WHERE `Last Name`='Shmilyk';

#UPDATE `customer info` SET `Exp Date` = '2019-03-02' WHERE `Last Name`='Ka';

#DELETE FROM `customer info` WHERE (`Exp Date`<'2020-01-01');

SELECT * FROM `customer info`;