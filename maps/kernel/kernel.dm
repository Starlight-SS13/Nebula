#if !defined(USING_MAP_DATUM)

// NEBULA MODS START
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/xenobiology/_xenobiology.dme"

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/mobs/borers/_borers.dme"

	#include "../../mods/species/utility_frames/_utility_frames.dme"
// NEBULA MODS END

// STARLIGHT MODS START
	#include "../../starlight/mods/content/starlight/_starlight.dme"
	#include "../../starlight/mods/content/interpack/_interpack.dme"

	#include "../../starlight/mods/species/vatgrown/_vatgrown.dme"
// STARLIGHT MODS END

	#include "kernel-1.dmm"
	#include "kernel-2.dmm"
	#include "kernel-3.dmm"

	#include "jobs\_departments.dm"
	#include "jobs\_jobs.dm"
	#include "jobs\command.dm"
	#include "jobs\engineering.dm"
	#include "jobs\medical.dm"
	#include "jobs\science.dm"

	#include "kernel_antagonists.dm"
	#include "kernel_areas.dm"
	#include "kernel_outfits.dm"
	#include "kernel_setup.dm"
	#include "kernel_shuttles.dm"
	#include "kernel_unit_testing.dm"

	#define USING_MAP_DATUM /datum/map/kernel

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Outpost Kernel

#endif
