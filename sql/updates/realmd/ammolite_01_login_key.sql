-- A login key: what Ammolite gives a client for one login in place of the account's password. The client logs in as
-- login_name (the account name, '#' and the key's ID) and realmd takes v and s from here for that one logon challenge.
CREATE TABLE `login_key` (
`login_name` VARCHAR(40) NOT NULL PRIMARY KEY,
`account_id` INT UNSIGNED NOT NULL,
`v` VARCHAR(64) NOT NULL,
`s` VARCHAR(64) NOT NULL,
`expires_at` BIGINT UNSIGNED NOT NULL,
KEY `expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
