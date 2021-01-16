/obj/machinery/computer/shuttle_control/explore/exploration_pod
	name        = "control console"
	shuttle_tag = "Exploration Shuttle"

/datum/shuttle/autodock/overmap/exploration_pod
	name = "Exploration Shuttle"
	shuttle_area = /area/tethys/exploration_pod
	dock_target  = "tethys_shuttle"
	current_location = "nav_tethys_dock"

/area/tethys/exploration_pod
	name       = "\improper Exploration Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/obj/effect/shuttle_landmark/exploration_pod/tethys
	name               = "Tethys Exploration Shuttle Dock"
	landmark_tag       = "nav_tethys_dock"
	docking_controller = "tethys_dock_port"
