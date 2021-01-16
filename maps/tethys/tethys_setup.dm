/datum/random_map/automata/cave_system/sea
	descriptor = "sea caves"
	wall_type =  /turf/simulated/wall/natural/ice
	floor_type = /turf/exterior/seafloor
	target_turf_type = /turf/unsimulated/mask

/datum/map/tethys/setup_map()
	..()
	new /datum/random_map/noise/seafloor(null, 1, 1, 2, world.maxx, world.maxy)

	new /datum/random_map/automata/cave_system/sea(null, 1, 1, 1, world.maxx, world.maxy)
	new /datum/random_map/noise/ore(null, 1, 1, 1, world.maxx, world.maxy)

	new /datum/random_map/automata/cave_system/sea(null, 1, 1, 2, world.maxx, world.maxy) 
	new /datum/random_map/noise/ore(null, 1, 1, 2, world.maxx, world.maxy)
