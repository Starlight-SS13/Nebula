#if !defined(USING_MAP_DATUM)

	//MODS START

//species
	#include "../../starlight/mods/tritonian/_tritonian.dme"
	#include "../../starlight/mods/tajaran/_tajaran.dme"
	#include "../../starlight/mods/resomi/_resomi.dme"
	#include "../../starlight/mods/booster/_booster.dme"
	#include "../../mods/dionaea/_dionaea.dme"


//audiovisual
	#include "../../starlight/mods/interpost_sounds/_interpost_sounds.dme"
	#include "../../starlight/mods/europa_floors/_europa_floors.dme"
	#include "../../starlight/mods/blindspot/_blindspot.dme"

	//MODS END

//No away-missions for now

/*
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
*/

	#include "jellyfish_antagonists.dm"
	#include "jellyfish_areas.dm"
	#include "jellyfish_jobs.dm"
	#include "jellyfish_loadouts.dm"
	#include "jellyfish_overmap.dm"
	#include "jellyfish_overrides.dm"
	#include "jellyfish_shuttles.dm"
	#include "jellyfish_spawnpoints.dm"
	#include "jellyfish_unit_testing.dm"
	#include "jellyfish-0.dmm"
	#include "jellyfish-1.dmm"

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

	#define USING_MAP_DATUM /datum/map/jellyfish

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring jellyfish

#endif
