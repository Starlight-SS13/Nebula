/datum/map/tethys
	use_overmap = 1

/obj/effect/overmap/visitable/ship/tethys
	name         = "underwater complex"
	desc         = "Medium-sized pressurized underwater facility."
	icon_state   = "object"
	free_landing = TRUE
	known        = TRUE

/obj/machinery/computer/shuttle_control/explore/tethys
	name        = "control console"
	shuttle_tag = "Tethys Pod"

/datum/shuttle/autodock/overmap/tethys
	name             = "Tethys Pod"
	shuttle_area     = /area/tethys/pod
	current_location = "nav_tethys_dock"

/area/tethys/pod
	name       = "Tethys Pod"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/obj/effect/overmap/visitable/ship/landable/tethys_pod
	name    = "tethys pod"
	shuttle = "Tethys Pod"

/obj/effect/shuttle_landmark/tethys_dock
	name               = "Tethys Pod Dock"
	landmark_tag       = "nav_tethys_dock"
	docking_controller = null