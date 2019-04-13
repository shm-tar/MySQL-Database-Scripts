SHOW TABLES;
DESCRIBE claims;

ALTER TABLE claims
	DROP FOREIGN KEY `fk_Claims_Customer info1`,
    DROP INDEX `fk_Claims_Customer info1_idx`;

ALTER TABLE claims
	ADD constraint `fk_Claims_Customer info1` FOREIGN KEY  (ID)
    references `SQL Insurance Group`.`Customer info` (`ID`) ON DELETE CASCADE;

SHOW INDEX FROM claims;

ALTER TABLE `home insurance`
	DROP COLUMN `Liability Amount`,
    MODIFY `Property Damage Amount` INT(15) UNSIGNED NOT NULL,
    ADD COLUMN Fines INT(6) UNSIGNED NOT NULL AFTER `Property Damage Amount`;
