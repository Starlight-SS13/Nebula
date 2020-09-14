#if !defined(USING_MAP_DATUM)

	#include "../../mods/corporate/_corporate.dme"

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

	#include "orbital_antagonists.dm" //OK
	#include "orbital_areas.dm" //WIP
	#include "orbital_jobs.dm" //DONE
	#include "orbital_loadouts.dm" //OK
	#include "orbital_overmap.dm" //OK +1
	#include "orbital_overrides.dm" //OK
	#include "orbital_shuttles.dm" //OK +1
	#include "orbital_spawnpoints.dm" //OK
	#include "orbital_unit_testing.dm" //WIP
//	#include "orbital-0.dmm"
//	#include "orbital-1.dmm"

	#include "jobs/_jobs.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "outfits/_outfits.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"

	#define USING_MAP_DATUM /datum/map/orbital

	// - Starlight Edit -
//	#include "../../starlight/mods/booster/_booster.dme"
//NO BOOSTERS.
//I don't hate them. They're just odd in there

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Orbital

#endif
