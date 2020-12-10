#if !defined(USING_MAP_DATUM)

	#include "loop_antagonists.dm"
	#include "loop_areas.dm"
	#include "loop_jobs.dm"
	#include "loop_overmap.dm"
	#include "loop_setup.dm"
	#include "loop_unit_testing.dm"

	#include "loop-1.dmm"
	#include "loop-2.dmm"
	#include "loop-3.dmm"

	#define USING_MAP_DATUM /datum/map/loop

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring the Loop

#endif
