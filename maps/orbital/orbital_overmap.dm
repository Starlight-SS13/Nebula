/obj/effect/overmap/visitable/sector/orbital
	name = "Orbital Station Omega"
	desc = "Sensors detect an orbital station above the exoplanet."

	color = "#00ffff"
//	start_x = 4
//	start_y = 4
	icon_state = "object"

	free_landing = TRUE //WHEEEEEEEEEEEEEEEEEEEEEEEE

//	initial_generic_waypoints = list("nav_tradeship_below_bow", "nav_tradeship_below_starboardastern", "nav_tradeship_port_dock_shuttle")

	initial_restricted_waypoints = list(
		"Orbital Pod" = list("nav_orbital_hangar_pod"),
	)