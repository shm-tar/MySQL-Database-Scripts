SELECT `customer info`.ID, `Last Name` AS `Client`, MAX(`Benefit Amount`) AS `Max Benefit`
	FROM `customer info` INNER JOIN `life insurance`
		ON `customer info`.ID = `life insurance`.ID;

SELECT COUNT(`Benefit Amount`) AS `Premium Benefit` FROM `life insurance`
	WHERE `Benefit Amount` > 250000;

SELECT SUM(`Benefit Amount`) AS `Benefit Bank` FROM `life insurance`;

SELECT AVG(`Property Damage Amount`) AS `Average Property Insurance`, AVG(`Benefit Amount`) AS `Average Benefit Amount`
	FROM (`customer info` INNER JOIN `home insurance`) INNER JOIN `life insurance`
		ON `customer info`.ID = `home insurance`.ID AND `customer info`.ID = `life insurance`.ID;
