/*
/datum/random_map/automata/cave_system/sea
	iterations = 2
	descriptor = "sea caves"
	wall_type = /turf/simulated/wall/natural/ice
	mineral_turf = /turf/simulated/wall/natural/random/ice
	floor_type = /turf/exterior/seafloor
*/

/datum/map/tethys/perform_map_generation()
	..()
	new /datum/random_map/noise/seafloor(null, 1, 1, 2, world.maxx, world.maxy)
/*
	new /datum/random_map/automata/cave_system/sea(null, 1, 1, 1, world.maxx, world.maxy)
	new /datum/random_map/noise/ore(null, 1, 1, 1, world.maxx, world.maxy)

	new /datum/random_map/automata/cave_system/sea(null, 1, 1, 2, world.maxx, world.maxy) 
	new /datum/random_map/noise/ore(null, 1, 1, 2, world.maxx, world.maxy) */
	return TRUE
