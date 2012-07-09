ALTER TABLE `characters` DROP COLUMN `arenaPoints`;
ALTER TABLE `characters` DROP COLUMN `totalHonorPoints`;
ALTER TABLE `characters` DROP COLUMN `todayHonorPoints`;
ALTER TABLE `characters` DROP COLUMN `yesterdayHonorPoints`;

DROP TABLE `player_classlevelstats`;
ALTER TABLE `corpse` DROP COLUMN `guildId`;