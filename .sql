CREATE TABLE IF NOT EXISTS `trucker_available_contracts` (
			`contract_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
			`contract_type` BIT(1) NOT NULL DEFAULT b'0',
			`contract_name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
			`coords_index` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
			`price_per_km` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`cargo_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`fragile` BIT(1) NOT NULL DEFAULT b'0',
			`valuable` BIT(1) NOT NULL DEFAULT b'0',
			`fast` BIT(1) NOT NULL DEFAULT b'0',
			`truck` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
			`trailer` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
			PRIMARY KEY (`contract_id`) USING BTREE
		)
		COLLATE='utf8mb4_general_ci'
		ENGINE=InnoDB
		;

		CREATE TABLE IF NOT EXISTS `trucker_drivers` (
			`driver_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
			`user_id` VARCHAR(50) NULL DEFAULT NULL,
			`name` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
			`product_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`distance` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`valuable` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`fragile` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`fast` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`price` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`price_per_km` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`img` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
			PRIMARY KEY (`driver_id`) USING BTREE
		)
		COLLATE='utf8mb4_general_ci'
		ENGINE=InnoDB
		;

		CREATE TABLE IF NOT EXISTS `trucker_loans` (
			`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
			`user_id` VARCHAR(50) NOT NULL,
			`loan` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`remaining_amount` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`day_cost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`taxes_on_day` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`timer` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			PRIMARY KEY (`id`) USING BTREE
		)
		COLLATE='utf8mb4_general_ci'
		ENGINE=InnoDB
		;

		CREATE TABLE IF NOT EXISTS `trucker_trucks` (
			`truck_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
			`user_id` VARCHAR(50) NOT NULL,
			`truck_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
			`driver` INT(10) UNSIGNED NULL DEFAULT NULL,
			`body` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1000',
			`engine` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1000',
			`transmission` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1000',
			`wheels` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1000',
			PRIMARY KEY (`truck_id`) USING BTREE
		)
		COLLATE='utf8mb4_general_ci'
		ENGINE=InnoDB
		;

		CREATE TABLE IF NOT EXISTS `trucker_users` (
			`user_id` VARCHAR(50) NOT NULL,
			`money` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`total_earned` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`finished_deliveries` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`exp` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`traveled_distance` DOUBLE UNSIGNED NOT NULL DEFAULT '0',
			`skill_points` INT(10) UNSIGNED NOT NULL DEFAULT '0',
			`product_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`distance` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`valuable` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`fragile` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`fast` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
			`loan_notify` BIT(1) NOT NULL DEFAULT b'0',
			PRIMARY KEY (`user_id`) USING BTREE
		)
		COLLATE='utf8mb4_general_ci'
		ENGINE=InnoDB
		;