CREATE TRIGGER customer_info_time_log
	AFTER INSERT ON `customer info`
    FOR EACH ROW
		INSERT INTO `log_time_added` VALUES (NEW.`ID`, NEW.`Last Name`, NOW());

INSERT INTO `customer info` (`ID`, `First Name`, `Last Name`, `City`, `Address`, `State`, `Phone number`, `Credit Card`, `Exp Date`) 
					 VALUES ('8', 'Taras', 'Babas', 'Zhmerynka', '123 Baker', 'Ukraine', '0505505342', '4938 1923 1239 1281', '2021-03-29');

SELECT * FROM `customer info`;

DELETE FROM `customer info` WHERE (`Last Name` = 'Babas');

SELECT * FROM `log_time_added`;


    
