#if !defined(USING_MAP_DATUM)

	#define USING_MAP_DATUM /datum/map/lowpop
	#include "lowpop-0.dmm"
	#include "lowpop-1.dmm"
	#include "lowpop-2.dmm"
	#include "lowpop-data.dm"
	#include "lowpop-mods.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring omega

#endif
