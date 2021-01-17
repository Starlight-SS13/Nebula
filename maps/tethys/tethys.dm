#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tritonian/_tritonian.dme"

// STARLIGHT MODS START

	// General content mod
	#include "../../starlight/mods/content/starlight/_starlight.dme"

	// Species mods
	#include "../../starlight/mods/species/booster/_booster.dme"
	#include "../../starlight/mods/species/vatgrown/_vatgrown.dme"

// STARLIGHT MODS END

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/species/neocorvids/_neocorvids.dme"

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"
	#include "../../mods/content/government/away_sites/icarus/icarus.dm"
	#include "../../mods/content/government/ruins/ec_old_crash/ec_old_crash.dm"
	#include "../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"

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

	#include "tethys_antagonists.dm"
	#include "tethys_areas.dm"
	#include "tethys_jobs.dm"
	#include "tethys_loadout.dm"
	#include "tethys_lobby_tracks.dm"
	#include "tethys_lore.dm"
	#include "tethys_overmap.dm"
	#include "tethys_overrides.dm"
	#include "tethys_setup.dm"
	#include "tethys_shuttles.dm"
	#include "tethys_unit_testing.dm"

	#include "jobs/_goals.dm"
	#include "jobs/_jobs.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"

	#include "machinery/airlock.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"

	#include "tethys-1.dmm"
	#include "tethys-2.dmm"
	#include "tethys-3.dmm"

	#define USING_MAP_DATUM /datum/map/tethys

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Tethys

#endif