SHOW INDEX FROM `customer info`;
SHOW INDEX FROM `payments`;

CREATE INDEX customer_idx ON `customer info` (ID, `Last Name`);
SHOW INDEX FROM `customer info`;

CREATE INDEX customer_propdamam_idx ON `home insurance` (ID, `Property Damage Amount`);
SHOW INDEX FROM `home insurance`;

EXPLAIN SELECT AVG(`Property Damage Amount`) AS `Average Property Insurance`, AVG(`Benefit Amount`) AS `Average Benefit Amount`
	FROM (`customer info` INNER JOIN `home insurance`) INNER JOIN `life insurance`
		ON `customer info`.ID = `home insurance`.ID AND `customer info`.ID = `life insurance`.ID;

EXPLAIN SELECT STRAIGHT_JOIN AVG(`Property Damage Amount`) AS `Average Property Insurance`, AVG(`Benefit Amount`) AS `Average Benefit Amount`
	FROM (`customer info` INNER JOIN `home insurance`) INNER JOIN `life insurance`
		ON `customer info`.ID = `home insurance`.ID AND `customer info`.ID = `life insurance`.ID;