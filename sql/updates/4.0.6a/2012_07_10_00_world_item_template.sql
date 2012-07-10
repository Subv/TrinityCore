DROP TABLE IF EXISTS `item_script_names`;
CREATE TABLE `item_script_names` (
`Id` int(10) unsigned not null,
`ScriptName` varchar(64) not null,
PRIMARY KEY(`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `item_script_names`
SELECT
`item_template`.`entry` AS `Id`,
`item_template`.`ScriptName` AS `ScriptName`
FROM
`item_template`
WHERE
length(`item_template`.`ScriptName`)>0;

ALTER TABLE `item_template` DROP `ScriptName`;

ALTER TABLE `item_template`
  ADD `stat_unk1_1` int(11) not null default 0 AFTER `stat_value1`,
  ADD `stat_unk2_1` int(11) not null default 0 AFTER `stat_unk1_1`,
  ADD `stat_unk1_2` int(11) not null default 0 AFTER `stat_value2`,
  ADD `stat_unk2_2` int(11) not null default 0 AFTER `stat_unk1_2`,
  ADD `stat_unk1_3` int(11) not null default 0 AFTER `stat_value3`,
  ADD `stat_unk2_3` int(11) not null default 0 AFTER `stat_unk1_3`,
  ADD `stat_unk1_4` int(11) not null default 0 AFTER `stat_value4`,
  ADD `stat_unk2_4` int(11) not null default 0 AFTER `stat_unk1_4`,
  ADD `stat_unk1_5` int(11) not null default 0 AFTER `stat_value5`,
  ADD `stat_unk2_5` int(11) not null default 0 AFTER `stat_unk1_5`,
  ADD `stat_unk1_6` int(11) not null default 0 AFTER `stat_value6`,
  ADD `stat_unk2_6` int(11) not null default 0 AFTER `stat_unk1_6`,
  ADD `stat_unk1_7` int(11) not null default 0 AFTER `stat_value7`,
  ADD `stat_unk2_7` int(11) not null default 0 AFTER `stat_unk1_7`,
  ADD `stat_unk1_8` int(11) not null default 0 AFTER `stat_value8`,
  ADD `stat_unk2_8` int(11) not null default 0 AFTER `stat_unk1_8`,
  ADD `stat_unk1_9` int(11) not null default 0 AFTER `stat_value9`,
  ADD `stat_unk2_9` int(11) not null default 0 AFTER `stat_unk1_9`,
  ADD `stat_unk1_10` int(11) not null default 0 AFTER `stat_value10`,
  ADD `stat_unk2_10` int(11) not null default 0 AFTER `stat_unk1_10`,
  DROP `StatsCount`,
  DROP `ScalingStatValue`,
  CHANGE `dmg_type1` `DamageType` tinyint(3) unsigned not null default 0 AFTER `ScalingStatDistribution`,
  DROP `dmg_min1`,
  DROP `dmg_max1`,
  DROP `dmg_min2`,
  DROP `dmg_max2`,
  DROP `dmg_type2`,
  DROP `armor`,
  DROP `holy_res`,
  DROP `fire_res`,
  DROP `nature_res`,
  DROP `frost_res`,
  DROP `shadow_res`,
  DROP `arcane_res`,
  DROP `ammo_type`,
  DROP `block`,
  DROP `RequiredDisenchantSkill`,
  DROP `DisenchantId`,
  ADD `StatScalingFactor` float not null default 0 AFTER `HolidayId`,
  ADD `Field130` int(11) not null default 0 AFTER `StatScalingFactor`,
  ADD `Field131` int(11) not null default 0 AFTER `Field130`;
  
  
DROP TABLE IF EXISTS `item_template_addon`;
CREATE TABLE `item_template_addon` (
`Id` int(10) unsigned not null,
`BuyCount` tinyint(3) unsigned not null default 1,
`FoodType` tinyint(3) unsigned not null default 0,
`MinMoneyLoot` int(10) unsigned not null default 0,
`MaxMoneyLoot` int(10) unsigned not null default 0,
`SpellPPMChance` float unsigned not null default 0,
PRIMARY KEY(`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `item_template_addon`
SELECT
`item_template`.`entry` AS `Id`,
`item_template`.`BuyCount` AS `BuyCount`,
`item_template`.`FoodType` AS `FoodType`,
`item_template`.`minMoneyLoot` AS `MinMoneyLoot`,
`item_template`.`maxMoneyLoot` AS `MaxMoneyLoot`,
ABS(IF(`item_template`.`spelltrigger_1`=2, `item_template`.`spellppmRate_1`,
      IF (`item_template`.`spelltrigger_2`=2, `item_template`.`spellppmRate_2`,
        IF (`item_template`.`spelltrigger_3`=2, `item_template`.`spellppmRate_3`,
          IF (`item_template`.`spelltrigger_4`=2, `item_template`.`spellppmRate_4`,
            IF (`item_template`.`spelltrigger_5`=2, `item_template`.`spellppmRate_5`, 0))))))
  AS `SpellPPMChance`
FROM
`item_template`
HAVING -- need to use having due to `SpellPPMChance` usage which is not an actual field in table
`item_template`.`BuyCount`!=1 OR
`item_template`.`FoodType`!=0 OR
(`item_template`.`minMoneyLoot`!=0 AND
`item_template`.`maxMoneyLoot`!=0) OR
`SpellPPMChance`!=0;

ALTER TABLE `item_template`
  DROP `BuyCount`,
  DROP `FoodType`,
  DROP `minMoneyLoot`,
  DROP `maxMoneyLoot`,
  DROP `spellppmRate_1`,
  DROP `spellppmRate_2`,
  DROP `spellppmRate_3`,
  DROP `spellppmRate_4`,
  DROP `spellppmRate_5`;
  
  
  
SET @LESSER_MAGIC = 10938;
SET @GREATER_MAGIC = 10939;
SET @STRANGE_DUST = 10940;
SET @SMALL_GLIMMERING = 10978;
SET @LESSER_ASTRAL = 10998;
SET @GREATER_ASTRAL = 11082;
SET @SOUL_DUST = 11083;
SET @LARGE_GLIMMERING = 11084;
SET @LESSER_MYSTIC = 11134;
SET @GREATER_MYSTIC = 11135;
SET @VISION_DUST = 11137;
SET @SMALL_GLOWING = 11138;
SET @LARGE_GLOWING = 11139;
SET @LESSER_NETHER = 11174;
SET @GREATER_NETHER = 11175;
SET @DREAM_DUST = 11176;
SET @SMALL_RADIANT = 11177;
SET @LARGE_RADIANT = 11178;
SET @SMALL_BRILLIANT = 14343;
SET @LARGE_BRILLIANT = 14344;
SET @LESSER_ETERNAL = 16202;
SET @GREATER_ETERNAL = 16203;
SET @ILLUSION_DUST = 16204;
SET @NEXUS_CRYSTAL = 20725;
SET @ARCANE_DUST = 22445;
SET @GREATER_PLANAR = 22446;
SET @LESSER_PLANAR = 22447;
SET @SMALL_PRISMATIC = 22448;
SET @LARGE_PRISMATIC = 22449;
SET @VOID_CRYSTAL = 22450;
SET @DREAM_SHARD = 34052;
SET @SMALL_DREAM = 34053;
SET @INFINITE_DUST = 34054;
SET @GREATER_COSMIC = 34055;
SET @LESSER_COSMIC = 34056;
SET @ABYSS_CRYSTAL = 34057;
SET @HEAVENLY_SHARD = 52721;
SET @SMALL_HEAVENLY = 52720;
SET @HYPN_DUST = 52555;
SET @GREATER_CEL = 52719;
SET @LESSER_CEL = 52718;
SET @MAELSTROM_CRYSTAL = 52722;

TRUNCATE `disenchant_loot_template`;
INSERT INTO `disenchant_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(3,@STRANGE_DUST,20,1,1,1,2),
(4,@STRANGE_DUST,80,1,1,1,2),
(5,@STRANGE_DUST,75,1,1,2,3),
(6,@STRANGE_DUST,20,1,1,2,3),
(7,@STRANGE_DUST,15,1,1,4,6),
(8,@STRANGE_DUST,75,1,1,4,6),
(13,@SOUL_DUST,75,1,1,1,2),
(14,@SOUL_DUST,20,1,1,1,2),
(17,@SOUL_DUST,75,1,1,2,5),
(18,@SOUL_DUST,20,1,1,2,5),
(21,@VISION_DUST,75,1,1,1,2),
(22,@VISION_DUST,20,1,1,1,2),
(25,@VISION_DUST,75,1,1,2,5),
(26,@VISION_DUST,20,1,1,2,5),
(29,@DREAM_DUST,75,1,1,1,2),
(30,@DREAM_DUST,20,1,1,1,2),
(31,@DREAM_DUST,22,1,1,2,5),
(32,@DREAM_DUST,75,1,1,2,5),
(46,@ILLUSION_DUST,75,1,1,1,2),
(47,@ILLUSION_DUST,22,1,1,1,2),
(52,@ILLUSION_DUST,75,1,1,2,5),
(53,@ILLUSION_DUST,22,1,1,2,5),
(56,@ARCANE_DUST,75,1,1,1,3),
(57,@ARCANE_DUST,22,1,1,1,2),
(62,@ARCANE_DUST,22,1,1,2,5),
(63,@ARCANE_DUST,75,1,1,2,5),
(70,@ARCANE_DUST,75,1,1,2,3),
(71,@ARCANE_DUST,22,1,1,2,3),
(82,@INFINITE_DUST,75,1,1,1,3),
(83,@INFINITE_DUST,22,1,1,1,3),
(88,@INFINITE_DUST,75,1,1,4,7),
(89,@INFINITE_DUST,22,1,1,4,7),
(94,@HYPN_DUST,75,1,1,1,2),
(95,@HYPN_DUST,75,1,1,1,3),
(96,@HYPN_DUST,60,1,1,1,4),
(97,@HYPN_DUST,80,1,1,2,4),
(98,@HYPN_DUST,50,1,1,2,5),
(99,@HYPN_DUST,25,1,1,1,2),
(100,@HYPN_DUST,25,1,1,1,3),
(101,@HYPN_DUST,35,1,1,1,4),
(102,@HYPN_DUST,30,1,1,2,4),
(103,@HYPN_DUST,30,1,1,2,5),
(3,@LESSER_MAGIC,80,1,1,1,2),
(4,@LESSER_MAGIC,20,1,1,1,2),
(5,@GREATER_MAGIC,20,1,1,1,2),
(6,@GREATER_MAGIC,75,1,1,1,2),
(7,@LESSER_ASTRAL,75,1,1,1,2),
(8,@LESSER_ASTRAL,15,1,1,1,2),
(13,@GREATER_ASTRAL,20,1,1,1,2),
(14,@GREATER_ASTRAL,75,1,1,1,2),
(17,@LESSER_MYSTIC,20,1,1,1,2),
(18,@LESSER_MYSTIC,75,1,1,1,2),
(21,@GREATER_MYSTIC,20,1,1,1,2),
(22,@GREATER_MYSTIC,75,1,1,1,2),
(25,@LESSER_NETHER,20,1,1,1,2),
(26,@LESSER_NETHER,75,1,1,1,2),
(29,@GREATER_NETHER,20,1,1,1,2),
(30,@GREATER_NETHER,75,1,1,1,2),
(31,@LESSER_ETERNAL,75,1,1,1,2),
(32,@LESSER_ETERNAL,20,1,1,1,2),
(46,@GREATER_ETERNAL,20,1,1,1,2),
(47,@GREATER_ETERNAL,75,1,1,1,2),
(52,@GREATER_ETERNAL,20,1,1,2,3),
(53,@GREATER_ETERNAL,75,1,1,2,3),
(56,@LESSER_PLANAR,22,1,1,1,3),
(57,@LESSER_PLANAR,75,1,1,1,2),
(62,@GREATER_PLANAR,75,1,1,1,2),
(63,@GREATER_PLANAR,22,1,1,1,2),
(70,@LESSER_PLANAR,22,1,1,2,3),
(71,@LESSER_PLANAR,75,1,1,2,3),
(82,@LESSER_COSMIC,22,1,1,1,2),
(83,@LESSER_COSMIC,75,1,1,1,2),
(88,@GREATER_COSMIC,22,1,1,1,2),
(89,@GREATER_COSMIC,75,1,1,1,2),
(94,@LESSER_CEL,25,1,1,1,2),
(95,@LESSER_CEL,25,1,1,1,3),
(96,@LESSER_CEL,40,1,1,2,4),
(97,@GREATER_CEL,20,1,1,1,2),
(98,@GREATER_CEL,50,1,1,2,3),
(99,@LESSER_CEL,75,1,1,1,2),
(100,@LESSER_CEL,75,1,1,1,3),
(101,@LESSER_CEL,65,1,1,2,4),
(102,@GREATER_CEL,70,1,1,1,2),
(103,@GREATER_CEL,70,1,1,2,3),
(5,@SMALL_GLIMMERING,5,1,1,1,1),
(6,@SMALL_GLIMMERING,5,1,1,1,1),
(7,@SMALL_GLIMMERING,10,1,1,1,1),
(8,@SMALL_GLIMMERING,10,1,1,1,1),
(9,@SMALL_GLIMMERING,100,1,1,1,1),
(10,@SMALL_GLIMMERING,100,1,1,1,1),
(11,@LARGE_GLIMMERING,100,1,1,1,1),
(12,@LARGE_GLIMMERING,100,1,1,1,1),
(13,@LARGE_GLIMMERING,5,1,1,1,1),
(14,@LARGE_GLIMMERING,5,1,1,1,1),
(15,@SMALL_GLOWING,100,1,1,1,1),
(16,@SMALL_GLOWING,100,1,1,1,1),
(17,@SMALL_GLOWING,5,1,1,1,1),
(18,@SMALL_GLOWING,5,1,1,1,1),
(19,@LARGE_GLOWING,100,1,1,1,1),
(20,@LARGE_GLOWING,100,1,1,1,1),
(21,@LARGE_GLOWING,5,1,1,1,1),
(22,@LARGE_GLOWING,5,1,1,1,1),
(23,@SMALL_RADIANT,100,1,1,1,1),
(24,@SMALL_RADIANT,100,1,1,1,1),
(25,@SMALL_RADIANT,5,1,1,1,1),
(26,@SMALL_RADIANT,5,1,1,1,1),
(27,@LARGE_RADIANT,100,1,1,1,1),
(28,@LARGE_RADIANT,100,1,1,1,1),
(29,@LARGE_RADIANT,5,1,1,1,1),
(30,@LARGE_RADIANT,5,1,1,1,1),
(31,@SMALL_BRILLIANT,3,1,1,1,1),
(32,@SMALL_BRILLIANT,5,1,1,1,1),
(34,@SMALL_BRILLIANT,100,1,1,1,1),
(35,@SMALL_BRILLIANT,100,1,1,1,1),
(38,@SMALL_RADIANT,100,1,1,2,4),
(39,@SMALL_RADIANT,100,1,1,2,4),
(40,@LARGE_RADIANT,100,1,1,2,4),
(41,@LARGE_RADIANT,100,1,1,2,4),
(42,@SMALL_BRILLIANT,100,1,1,2,4),
(43,@SMALL_BRILLIANT,100,1,1,2,4),
(44,@LARGE_BRILLIANT,99.5,1,1,1,1),
(45,@LARGE_BRILLIANT,99.5,1,1,1,1),
(46,@LARGE_BRILLIANT,5,1,1,1,1),
(47,@LARGE_BRILLIANT,3,1,1,1,1),
(50,@SMALL_PRISMATIC,99.5,1,1,1,1),
(51,@SMALL_PRISMATIC,99.5,1,1,1,1),
(52,@LARGE_BRILLIANT,5,1,1,1,1),
(53,@LARGE_BRILLIANT,3,1,1,1,1),
(56,@SMALL_PRISMATIC,3,1,1,1,1),
(57,@SMALL_PRISMATIC,3,1,1,1,1),
(58,@SMALL_PRISMATIC,100,1,1,1,1),
(59,@SMALL_PRISMATIC,100,1,1,1,1),
(62,@LARGE_PRISMATIC,3,1,1,1,1),
(63,@LARGE_PRISMATIC,3,1,1,1,1),
(64,@LARGE_PRISMATIC,99.5,1,1,1,1),
(65,@LARGE_PRISMATIC,99.5,1,1,1,1),
(68,@SMALL_PRISMATIC,100,1,1,1,2),
(69,@SMALL_PRISMATIC,100,1,1,1,2),
(70,@SMALL_PRISMATIC,3,1,1,1,1),
(71,@SMALL_PRISMATIC,3,1,1,1,1),
(72,@SMALL_GLIMMERING,100,1,1,2,4),
(73,@SMALL_GLIMMERING,100,1,1,2,4),
(74,@LARGE_GLIMMERING,100,1,1,2,4),
(75,@LARGE_GLIMMERING,100,1,1,2,4),
(76,@SMALL_GLOWING,100,1,1,2,4),
(77,@SMALL_GLOWING,100,1,1,2,4),
(78,@LARGE_GLOWING,100,1,1,2,4),
(79,@LARGE_GLOWING,100,1,1,2,4),
(82,@SMALL_DREAM,3,1,1,1,1),
(83,@SMALL_DREAM,3,1,1,1,1),
(84,@SMALL_DREAM,100,1,1,1,1),
(85,@SMALL_DREAM,100,1,1,1,1),
(86,@DREAM_SHARD,99.5,1,1,1,1),
(87,@DREAM_SHARD,99.5,1,1,1,1),
(88,@DREAM_SHARD,3,1,1,1,1),
(89,@DREAM_SHARD,3,1,1,1,1),
(104,@SMALL_HEAVENLY,100,1,1,1,1),
(105,@SMALL_HEAVENLY,100,1,1,1,2),
(106,@HEAVENLY_SHARD,100,1,1,1,1),
(107,@HEAVENLY_SHARD,100,1,1,1,1),
(44,@NEXUS_CRYSTAL,0.5,1,1,1,1),
(45,@NEXUS_CRYSTAL,0.5,1,1,1,1),
(48,@NEXUS_CRYSTAL,100,1,1,1,1),
(49,@NEXUS_CRYSTAL,100,1,1,1,1),
(50,@NEXUS_CRYSTAL,0.5,1,1,1,1),
(51,@NEXUS_CRYSTAL,0.5,1,1,1,1),
(54,@NEXUS_CRYSTAL,100,1,1,1,2),
(55,@NEXUS_CRYSTAL,100,1,1,1,2),
(60,@NEXUS_CRYSTAL,100,1,1,1,2),
(61,@NEXUS_CRYSTAL,100,1,1,1,2),
(64,@VOID_CRYSTAL,0.5,1,1,1,1),
(65,@VOID_CRYSTAL,0.5,1,1,1,1),
(66,@VOID_CRYSTAL,100,1,1,1,2),
(67,@VOID_CRYSTAL,100,1,1,1,2),
(80,@ABYSS_CRYSTAL,100,1,1,1,1),
(81,@ABYSS_CRYSTAL,100,1,1,1,1),
(86,@ABYSS_CRYSTAL,0.5,1,1,1,1),
(87,@ABYSS_CRYSTAL,0.5,1,1,1,1),
(108,@MAELSTROM_CRYSTAL,100,1,1,1,1),
(109,@MAELSTROM_CRYSTAL,100,1,1,1,1);