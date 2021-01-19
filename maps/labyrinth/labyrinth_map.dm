/datum/map/labyrinth
	base_turf_by_z = list(
		"1" = /turf/exterior/lava,
		"2" = /turf/simulated/open,
		"3" = /turf/simulated/open
	)

/datum/random_map/automata/cave_system/mountains/volcanic/labyrinth
	floor_type = /turf/exterior/volcanic

/datum/random_map/noise/exoplanet/volcanic/labyrinth
	target_turf_type = /turf/unsimulated/mask

/datum/map/labyrinth/build_exoplanets()
	..()
	var/obj/effect/overmap/visitable/sector/exoplanet/new_planet = new /obj/effect/overmap/visitable/sector/exoplanet/volcanic/labyrinth(null)
	new_planet.map_z = list(1,2)
	new_planet.build_level(planet_size[1], planet_size[2])
	base_turf_by_z = initial(base_turf_by_z)
	exterior_atmosphere.copy_from(new_planet.atmosphere)