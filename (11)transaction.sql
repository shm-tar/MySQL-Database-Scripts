START TRANSACTION;
	INSERT INTO claims VALUE ('7', '7', '250000', '0');
	INSERT INTO claims VALUE ('5', '5', '150000', '1');
	INSERT INTO claims VALUE ('9', '9', '150000', '0');
COMMIT;
ROLLBACK;

START TRANSACTION;
	INSERT INTO claims VALUE ('7', '7', '250000', '0');
COMMIT;
