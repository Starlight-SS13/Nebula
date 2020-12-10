//Areas + ocean things

/world
	turf = /turf/exterior/seafloor

/turf/simulated/wall/natural/ocean
	name       = "ocean rock"
	floor_type = /turf/exterior/seafloor
	strata     = /decl/strata/permafrost

/area/space/ocean
	name = "open ocean"
	icon_state = "ocean"
	icon = 'maps/loop/icons/areas.dmi'
	base_turf = /turf/exterior/seafloor

/area/loop
	name = "\improper The Loop"
	icon_state = "loop"
	icon = 'maps/loop/icons/areas.dmi'
	base_turf = /turf/exterior/seafloor/non_flooded

	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
