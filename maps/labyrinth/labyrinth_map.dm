
/datum/map/labyrinth
	base_turf_by_z = list(
		"1" = /turf/exterior/lava,
		"2" = /turf/exterior/open,
		"3" = /turf/exterior/open
	)

/datum/random_map/automata/cave_system/mountains/volcanic/labyrinth
	target_turf_type = /turf/unsimulated/mask
	floor_type = /turf/exterior/volcanic

/datum/random_map/noise/exoplanet/volcanic/labyrinth
	target_turf_type = /turf/exterior/volcanic

/datum/map/labyrinth/build_exoplanets()
	..()
	var/obj/effect/overmap/visitable/sector/exoplanet/new_planet = new /obj/effect/overmap/visitable/sector/exoplanet/volcanic/labyrinth(null, station_levels[3])
	new_planet.build_level(planet_size[1], planet_size[2])

/* Legacy map generation if exoplanet's one broken
/datum/map/labyrinth/perform_map_generation()
	. = ..()

	for(var/zlevel in station_levels)

		new /datum/random_map/automata/cave_system/mountains/volcanic(null,1,1,zlevel,world.maxx,world.maxy,0,1,1, new /area/exoplanet/volcanic/labyrinth)
		new /datum/random_map/noise/exoplanet/volcanic(null,1,1,zlevel,world.maxx,world.maxy,0,1,1, new /area/exoplanet/volcanic/labyrinth, list("#a23c05","#3f1f0d","#662929","#ba6222","#7a5b3a","#471429"))
		new /datum/random_map/noise/ore/filthy_rich(null,1,1,zlevel, world.maxx, world.maxy)

	for(var/zlevel in station_levels)
		var/list/edges
		edges += block(locate(1, 1, zlevel), locate(TRANSITIONEDGE, world.maxy, zlevel))
		edges |= block(locate(world.maxx-TRANSITIONEDGE, 1, zlevel),locate(world.maxx, world.maxy, zlevel))
		edges |= block(locate(1, 1, zlevel), locate(world.maxx, TRANSITIONEDGE, zlevel))
		edges |= block(locate(1, world.maxy-TRANSITIONEDGE, zlevel),locate(world.maxx, world.maxy, zlevel))
		for(var/turf/T in edges)
			T.ChangeTurf(/turf/exterior/planet_edge)
*/
