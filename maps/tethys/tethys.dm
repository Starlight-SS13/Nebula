#if !defined(USING_MAP_DATUM)

	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tritonian/_tritonian.dme"

// STARLIGHT MODS START

	// General content mod
	#include "../../starlight/mods/content/starlight/_starlight.dme"

// STARLIGHT MODS END

	#include "tethys_antagonists.dm"
	#include "tethys_areas.dm"
	#include "tethys_jobs.dm"
	#include "tethys_lore.dm"
	#include "tethys_overmap.dm"
	#include "tethys_overrides.dm"
	#include "tethys_setup.dm"
	#include "tethys_shuttles.dm"
	#include "tethys_unit_testing.dm"

	#include "datum/fabricator_designs.dm"
	#include "datum/loadout.dm"

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