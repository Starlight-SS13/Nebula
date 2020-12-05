/* /area/ship/trade/crew/dorms1
	name = "Crew Cabin #1"
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED */

/obj/turbolift_map_holder/jelly
	depth       = 2
	lift_size_x = 5
	lift_size_y = 3

	door_type     = null
	wall_type     = null
	firedoor_type = null
	light_type    = null

	floor_type  = /turf/simulated/floor/plating
	button_type = /obj/structure/lift/button/standalone
	panel_type  = /obj/structure/lift/panel/standalone

	areas_to_use = list(/area/turbolift/jelly_lower, /area/turbolift/jelly_upper)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound   = 'sound/effects/lift_heavy_stop.ogg'

/area/turbolift
	name       = "Main Elevator"
	icon_state = "shuttle"
	requires_power   = 0
	dynamic_lighting = 1
	sound_env  = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	arrival_sound     = null
	lift_announce_str = null

/area/turbolift/jelly_lower
	name = "Lower Level"
	base_turf = /turf/simulated/floor

/area/turbolift/jelly_upper
	name = "Upper Level"
	base_turf = /turf/simulated/open