#if !defined(USING_MAP_DATUM)

	#include "../../mods/dionaea/_dionaea.dme"
	#include "../../mods/corporate/_corporate.dme"
	#include "../../mods/ascent/_ascent.dme"

	#include "../../starlight/mods/booster/_booster.dme"
//	#include "../../starlight/mods/europa_floors/_europa_floors.dme"
//	#include "../../mods/ship_combat2/_spacebattles.dme"

	#include "../../mods/government/away_sites/icarus/icarus.dm"
	#include "../../mods/government/ruins/ec_old_crash/ec_old_crash.dm"
	#include "../../mods/corporate/away_sites/lar_maria/lar_maria.dm"
	#include "../../mods/ascent/away_sites/ascent/ascent.dm"

	#include "../away/bearcat/bearcat.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/yacht/yacht.dm"

	#include "castelnau_announcements.dm"
	#include "castelnau_antagonism.dm"
	#include "castelnau_areas.dm"
	#include "castelnau_lobby.dm"
	#include "castelnau_overmap.dm"
	#include "castelnau_presets.dm"
	#include "castelnau_procs.dm"
	#include "castelnau_ranks.dm"
	#include "castelnau_renames.dm"
	#include "castelnau_security_state.dm"
	#include "castelnau_shuttles.dm"
	#include "castelnau_unit_testing.dm"

	#include "code/_global_vars/lists/locations.dm"
	#include "code/game/objects/effects/landmarks.dm"
	#include "code/gamemodes/objectives.dm"
	#include "code/modules/client/preferences_spawnpoints.dm"
	#include "flooring/flooring_premade.dm"

	#include "datums/hairs.dm"
	#include "datums/other_soft.dm"
	#include "datums/round_end.dm"
	#include "datums/programs/comm.dm"
	#include "datums/programs/deck_management.dm"
	#include "datums/programs/supermatter_monitor.dm"

	#include "items/cards_ids.dm"
	#include "items/drinks.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/machinery.dm"
	#include "items/random.dm"
	#include "items/manuals.dm"

	#include "items/clothing/castelnau_hands.dm"
	#include "items/clothing/castelnau_under.dm"
	#include "items/clothing/castelnau_head.dm"

	#include "job/access.dm"

	#include "job/jobs.dm"
	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_engineering.dm"
	#include "job/jobs_medical.dm"
	#include "job/jobs_misc.dm"
	#include "job/jobs_research.dm"
	#include "job/jobs_security.dm"
	#include "job/jobs_service.dm"

	#include "job/outfits/castelnau_outfits.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/research_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"

	#include "machinery/eng_equip.dm"
	#include "machinery/consoles.dm"
	#include "machinery/keycard authentication.dm"
	#include "machinery/lighting.dm"
	#include "machinery/vendors_storages.dm"
	#include "machinery/other.dm"

	#include "structures/sofa.dm"
//	#include "structures/signs.dm"
	#include "structures/atmos.dm"
	#include "structures/doors.dm"
	#include "structures/navlights.dm"

	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/supply.dm"
//	#include "structures/closets/random.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_misc.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_uniform.dm"

	#include "castelnau-1.dmm"
	#include "castelnau-2.dmm"
	#include "castelnau-3.dmm"
	#include "z2-transit.dmm"

	#define USING_MAP_DATUM /datum/map/castelnau

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Castelnau

#endif
