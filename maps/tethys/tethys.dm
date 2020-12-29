#if !defined(USING_MAP_DATUM)

	#include "../../mods/utility_frames/_utility_frames.dme"

// STARLIGHT MODS START

	// General content mod
	#include "../../starlight/mods/starlight/_starlight.dme"

	// Species mods
	#include "../../starlight/mods/resomi/_resomi.dme"
	#include "../../starlight/mods/tajaran/_tajaran.dme"
	#include "../../starlight/mods/tritonian/_tritonian.dme"

	// Visual and audio mods
	#include "../../starlight/mods/interpost_sounds/_interpost_sounds.dme"

// STARLIGHT MODS END

	#include "tethys_antagonists.dm"
	#include "tethys_areas.dm"
	#include "tethys_jobs.dm"
	#include "tethys_lore.dm"
	#include "tethys_overmap.dm"
	#include "tethys_overrides.dm"
	#include "tethys_setup.dm"
	#include "tethys_unit_testing.dm"

	#include "tethys-1.dmm"
	#include "tethys-2.dmm"
	#include "tethys-3.dmm"

	#define USING_MAP_DATUM /datum/map/tethys

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Tethys

#endif