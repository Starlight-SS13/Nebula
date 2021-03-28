// Main lift.
/obj/turbolift_map_holder/kernel_main
	depth = 4
	lift_size_x = 3
	lift_size_y = 2
	areas_to_use = list(
		/area/turbolift/kernel/main_first,
		/area/turbolift/kernel/main_second,
		/area/turbolift/kernel/main_third,
		/area/turbolift/kernel/main_fourth
	)

/area/turbolift/kernel/main_first
	name = "lift (first main level)"
	lift_floor_label = "Level 1"
	lift_floor_name = "Hangar Level"
	lift_announce_str = "Arriving at Hangar Level: Main Hangar. Arrival lounge. Engineering."
	base_turf = /turf/simulated/floor/plating

/area/turbolift/kernel/main_second
	name = "lift (second main level)"
	lift_floor_label = "Level 2"
	lift_floor_name = "Habitation Level"
	lift_announce_str = "Arriving at Habitation Level: Medical Bay. Library. Cargo Bay. Bar. Gym."

/area/turbolift/kernel/main_third
	name = "lift (third main level)"
	lift_floor_label = "Level 3"
	lift_floor_name = "Research Level"
	lift_announce_str = "Arriving at Maintenance Level: Science Labs. Kitchen."

/area/turbolift/kernel/main_fourth
	name = "lift (fourth main level)"
	lift_floor_label = "Level 4"
	lift_floor_name = "Command Level"
	lift_announce_str = "Arriving at Command Level: Bridge. Command Offices."

// Cargo Bay lift.
/obj/turbolift_map_holder/kernel_cargo
	depth = 2
	lift_size_x = 3
	lift_size_y = 1
	door_type =     null
	wall_type =     null
	firedoor_type = null
	light_type =    null
	floor_type =  /turf/simulated/floor/tiled/techfloor
	button_type = /obj/structure/lift/button/standalone
	panel_type =  /obj/structure/lift/panel/standalone
	areas_to_use = list(
		/area/turbolift/kernel/cargo_first,
		/area/turbolift/kernel/cargo_second
	)

/area/turbolift/kernel/cargo_first
	name = "lift (first cargo level)"
	lift_floor_label = "Level 1"
	lift_floor_name = "Hangar Level"
	base_turf = /turf/simulated/floor/plating

/area/turbolift/kernel/cargo_second
	name = "lift (second cargo level)"
	lift_floor_label = "Level 2"
	lift_floor_name = "Habitation Level"
