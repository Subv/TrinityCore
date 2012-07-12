ALTER TABLE `characters` DROP COLUMN `arenaPoints`;
ALTER TABLE `characters` DROP COLUMN `totalHonorPoints`;
ALTER TABLE `characters` DROP COLUMN `todayHonorPoints`;
ALTER TABLE `characters` DROP COLUMN `yesterdayHonorPoints`;
ALTER TABLE `characters` DROP COLUMN `ammoId`;
ALTER TABLE `characters` DROP COLUMN `knownCurrencies`;
ALTER TABLE `characters` ADD COLUMN `guildId` int unsigned not null default 0;

ALTER TABLE `corpse` DROP COLUMN `guildId`;