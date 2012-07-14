/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef TRINITY_DBCSFRM_H
#define TRINITY_DBCSFRM_H

const char Achievementfmt[]="niixsxiixixxii"; // done
const std::string CustomAchievementfmt="pppaaaapapaapp"; // todo
const std::string CustomAchievementIndex = "ID";
const char AchievementCriteriafmt[]="niiiiiiiisiiiiixxiiiiii"; // done
const char AreaTableEntryfmt[]="iiinixxxxxisiiiiixxxxxxxx"; // done
const char AreaGroupEntryfmt[]="niiiiiii"; // done
const char AreaPOIEntryfmt[]="niiiiiiiiiiiffixixxixx"; // done
const char AreaTriggerEntryfmt[]="nifffxxxfffff"; // done
const char ArmorLocationfmt[]="nfffff"; // done
const char AuctionHouseEntryfmt[]="niiix"; // done
const char BankBagSlotPricesEntryfmt[]="ni"; // done
const char BarberShopStyleEntryfmt[]="nixxxiii"; // done
const char BattlemasterListEntryfmt[]="niiiiiiiiixsiiiiiiix"; // done
const char CharStartOutfitEntryfmt[]="diiiiiiiiiiiiiiiiiiiiiiiiixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; // done
const char CharTitlesEntryfmt[]="nxsxix"; // done
const char ChatChannelsEntryfmt[]="nixsx"; // done
                                                            // ChatChannelsEntryfmt, index not used (more compact store)
const char ChrClassesEntryfmt[]="nixsxxxixiixxx"; // done
const char ChrRacesEntryfmt[]="nxixiixixxxxixsxxxxxixxx"; // done
const char CinematicSequencesEntryfmt[]="nxxxxxxxxx"; // done
const char CreatureDisplayInfofmt[]="nxxxfxxxxxxxxxxxx"; // done
const char CreatureFamilyfmt[]="nfifiiiiixsx"; // done
const char CreatureModelDatafmt[]="nxxxfxxxxxxxxxffxxxxxxxxxxxxxx"; // done
const char CreatureSpellDatafmt[]="niiiixxxx"; // done
const char CreatureTypefmt[]="nxx"; // done
const char CurrencyTypesfmt[]="nxxxxxxiiix"; // done
const char DestructibleModelDatafmt[]="ixxixxxixxxixxxixxxxxxxx"; // done
const char DungeonEncounterfmt[]="niixisxx"; // done
const char DurabilityCostsfmt[]="niiiiiiiiiiiiiiiiiiiiiiiiiiiii"; // done
const char DurabilityQualityfmt[]="nf"; // done
const char EmotesEntryfmt[]="nxxiiix"; // done
const char EmotesTextEntryfmt[]="nxixxxxxxxxxxxxxxxx"; // done
const char FactionEntryfmt[]="niiiiiiiiiiiiiiiiiiffixsxx"; // done
const char FactionTemplateEntryfmt[]="niiiiiiiiiiiii"; // done
const char GameObjectDisplayInfofmt[]="nxxxxxxxxxxxffffffxxx"; // done
const char GemPropertiesEntryfmt[]="nixxix"; // done
const char GlyphPropertiesfmt[]="niii"; // done
const char GlyphSlotfmt[]="nii"; // done
const char GtBarberShopCostBasefmt[]="xf"; // done
const char GtCombatRatingsfmt[]="xf"; // done
const char GtChanceToMeleeCritBasefmt[]="xf"; // done
const char GtChanceToMeleeCritfmt[]="xf"; // done
const char GtChanceToSpellCritBasefmt[]="xf"; // done
const char GtChanceToSpellCritfmt[]="xf"; // done
const char GtOCTClassCombatRatingScalarfmt[]="df"; // done
const char GtOCTHPPerStaminafmt[] = "xf"; // TODO
//const char GtOCTRegenMPfmt[]="f"; //! TODO:  Why is this not implemented?
const char GtRegenMPPerSptfmt[]="xf"; // done
const char GtSpellScalingfmt[]="nf"; // done
const char Holidaysfmt[]="niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiixxsiix"; // done
const char ItemArmorQualityfmt[]="nfffffffi"; // done
const char ItemArmorShieldfmt[]="nifffffff"; // done
const char ItemArmorTotalfmt[]="niffff"; // done
const char ItemBagFamilyfmt[]="nx"; // done
//const char ItemDisplayTemplateEntryfmt[]="nxxxxxxxxxxixxxxxxxxxxx";
//const char ItemCondExtCostsEntryfmt[]="xiii";
const char ItemDamagefmt[]="nfffffffi"; // done
const char ItemDisenchantLootfmt[]="niiiiii";
const char ItemExtendedCostEntryfmt[]="nxxiiiiiiiiiiiixiiiiiiiiiixxxxx"; // done
const char ItemLimitCategoryEntryfmt[]="nxii"; // done
const char ItemRandomPropertiesfmt[]="nxiiiiis"; // done
const char ItemRandomSuffixfmt[]="nsxiiiiiiiiii"; // done
const char ItemReforgefmt[]="nifif"; // done
const char ItemSetEntryfmt[]="dsiiiiiiiiiixxxxxxxiiiiiiiiiiiiiiiiii"; // done
const char LFGDungeonEntryfmt[]="nxiiiiiiixixxixix"; // done
const char LiquidTypefmt[]="nxxixixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; // done
const char LockEntryfmt[]="niiiiiiiiiiiiiiiiiiiiiiiixxxxxxxx"; // done
const char MailTemplateEntryfmt[]="nxs"; // done
const char MapEntryfmt[]="nxixxxsixxixiffxiixx"; // done
const char MapDifficultyEntryfmt[]="diisiix"; // done
const char MovieEntryfmt[]="nxxx"; // done
const char MountCapabilityfmt[]="niixxiii"; //! TODO
const char MountTypefmt[]="niiiiiiiiiiiiiiiiixxxxxxx"; //! TODO
const char NumTalentsAtLevelfmt[]="df"; // done
const char OverrideSpellDatafmt[]="niiiiiiiiiixx"; // done
const char PvPDifficultyfmt[]="diiiii"; // done
const char QuestSortEntryfmt[]="nx"; // done
const char QuestXPfmt[]="niiiiiiiiii"; // done
const char QuestFactionRewardfmt[]="niiiiiiiiii"; // done
const char RandomPropertiesPointsfmt[]="niiiiiiiiiiiiiii"; // done
const char ScalingStatDistributionfmt[]="niiiiiiiiiiiiiiiiiiiixi"; // done
const char ScalingStatValuesfmt[]="iniiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"; // done
const char SkillLinefmt[]="nixsxixi"; // done
const char SkillLineAbilityfmt[]="niiiixxiiiiixx"; // done
const char SoundEntriesfmt[]="nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"; // done
const char SpellCastTimefmt[]="nixx"; // done
const char SpellDifficultyfmt[]="niiii"; // done
const std::string CustomSpellDifficultyfmt="ppppp";
const std::string CustomSpellDifficultyIndex="id";
const char SpellDurationfmt[]="niii"; // done
const char SpellAuraOptionsfmt[]="niiii";
const std::string CustomSpellAuraOptionsEntryfmt="ppppp";
const std::string CustomSpellAuraOptionsEntryIndex="id";
const char SpellAuraRestrictionsfmt[]="niiiiiiii"; // done
const std::string CustomSpellAuraRestrictionsEntryfmt="ppppppppp";
const std::string CustomSpellAuraRestrictionsEntryIndex="id";
const char SpellCastingRequirementsfmt[]="nixxixi"; // done
const std::string CustomSpellCastingRequirementsEntryfmt="ppaapap";
const std::string CustomSpellCastingRequirementsEntryIndex="id";
const char SpellCategoriesfmt[]="niiiiii"; // done
const std::string CustomSpellCategoriesEntryfmt="ppppppp";
const std::string CustomSpellCategoriesEntryIndex="id";
const char SpellClassOptionsfmt[]="nxiiiix"; // done
const std::string CustomSpellClassOptionsEntryfmt="pappppa";
const std::string CustomSpellClassOptionsEntryIndex="id";
const char SpellCooldownsfmt[]="niii"; // done
const std::string CustomSpellCooldownsEntryfmt="pppp";
const std::string CustomSpellCooldownsEntryIndex="id";
const char SpellEffectfmt[]="nifiiiffiiiiiifixfiiiiiiii"; // done
const std::string CustomSpellEffectEntryfmt="ppppppapppppppppappppppppp";
const std::string CustomSpellEffectEntryIndex="id";
const char SpellEquippedItemsfmt[]="niii"; // done
const std::string CustomSpellEquippedItemsEntryfmt="pppp";
const std::string CustomSpellEquippedItemsEntryIndex="id";
const char SpellInterruptsfmt[]="nixixi"; // done
const std::string CustomSpellInterruptsEntryfmt="ppapap";
const std::string CustomSpellInterruptsEntryIndex="id";
const char SpellLevelsfmt[]="niii"; // done
const std::string CustomSpellLevelsEntryfmt="pppp";
const std::string CustomSpellLevelsEntryIndex="id";
const char SpellPowerfmt[]="niiiixx"; // done
const std::string CustomSpellPowerEntryfmt="pppppaa";
const std::string CustomSpellPowerEntryIndex="id";
const char SpellReagentsfmt[]="niiiiiiiiiiiiiiii"; // done
const std::string CustomSpellReagentsEntryfmt="ppppppppppppppppp";
const std::string CustomSpellReagentsEntryIndex="id";
const char SpellScalingfmt[]="niiiiffffffffffi"; // done
const std::string CustomSpellScalingEntryfmt="nppppppppppppppp";
const std::string CustomSpellScalingEntryIndex="id";
const char SpellShapeshiftfmt[]="nixixx"; // done
const std::string CustomSpellShapeshiftEntryfmt="ppapaa";
const std::string CustomSpellShapeshiftEntryIndex="id";
const char SpellTargetRestrictionsfmt[]="niiii"; // done
const std::string CustomSpellTargetRestrictionsEntryfmt="ppppp";
const std::string CustomSpellTargetRestrictionsEntryIndex="id";
const char SpellTotemsfmt[]="niiii"; // done
const std::string CustomSpellTotemsEntryfmt="ppppp";
const std::string CustomSpellTotemsEntryIndex="id";
const char SpellEntryfmt[]="niiiiiiiiixiiiifiiiisixxiixxixiiiiiiixiiiiixiix";
//! TODO CustomSpellEntryfmt
//const std::string CustomSpellEntryfmt="papppppppppppapapaaaaaaaaaaapaaapapppppppaaaaapaapaaaaaaaaaaaaaaaaaappppppppppppppppppppppppppppppppppppaaaaaapppppppppaaapppppppppaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaappppppppapppaaaaappaaaaaaa";
//const std::string CustomSpellEntryIndex = "Id";
const char SpellFocusObjectfmt[]="nx"; // done
const char SpellItemEnchantmentfmt[]="nxiiiiiixxxiiisiiiiiiix"; // done
const char SpellItemEnchantmentConditionfmt[]="nbbbbbxxxxxbbbbbbbbbbiiiiiXXXXX"; // done
const char SpellRadiusfmt[]="nfxf"; // done
const char SpellRangefmt[]="nffffixx"; // done
const char SpellRuneCostfmt[]="niiii"; // done
const char SpellShapeshiftFormfmt[]="nxxiixiiixxiiiiiiiixx"; // done
const char SummonPropertiesfmt[] = "niiiii"; // done
const char GuildPerksfmt[] = "nii"; //! TODO
const char TalentEntryfmt[]="niiiiiiiiixxixxxxxx"; // done
const char TalentTabEntryfmt[]="nxxiiixxxii"; // done
const char TalentTreePrimarySpellsfmt[]="diix"; // done
const char TaxiNodesEntryfmt[]="nifffsii"; // done
const char TaxiPathEntryfmt[]="niii"; // done
const char TaxiPathNodeEntryfmt[]="diiifffiiii"; // done
const char TotemCategoryEntryfmt[]="nxii"; // done
const char VehicleEntryfmt[]="niffffiiiiiiiifffffffffffffffssssfifiixx"; // done
const char VehicleSeatEntryfmt[]="niiffffffffffiiiiiifffffffiiifffiiiiiiiffiiiiixxxxxxxxxxxxxxxxxxxx"; // done
const char WMOAreaTableEntryfmt[]="niiixxxxxiixxxx"; // done
const char WorldMapAreaEntryfmt[]="xinxffffixxx"; // done
const char WorldMapOverlayEntryfmt[]="nxiiiixxxxxxxxx"; // done
const char WorldSafeLocsEntryfmt[]="nifffx"; // done
const char PhaseEntryfmt[]="nsi";  //testing
#endif
