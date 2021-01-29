/obj/effect/overmap/visitable/ship/wolf
	name = "USN Odyssey"
	color = "#00ffff"
	start_x = 4
	start_y = 4
	vessel_mass = 5000
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS
	initial_generic_waypoints = list("nav_odyssey_near_bow_third", "nav_odyssey_near_bow_bridge")
	initial_restricted_waypoints = list(
		"Gnat" = list("odyssey_hangar")
	)

/obj/effect/overmap/visitable/sector/supply_station
	name = "Supply Station"
	desc = "Sensors detect an automated supply station."
	icon_state = "object"
	known = 1

	initial_generic_waypoints = list(
		"nav_supply_station_1"
	)
