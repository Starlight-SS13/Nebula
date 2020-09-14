
//Orbital pod

/obj/machinery/computer/shuttle_control/explore/orbital_pod
	name = "orbital pod control"
	shuttle_tag = "Orbital Pod"

/datum/shuttle/autodock/overmap/orbital_pod
	name = "Orbital Pod"
	shuttle_area = /area/station/orbital/orbital_pod
	dock_target = "orbital_shuttle"
	current_location = "nav_orbital_hangar_pod"

/area/station/orbital/orbital_pod
	name = "Orbital Pod"
	ambience = list('sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/obj/effect/shuttle_landmark/orbital/hangar/pod
	name = "Orbital Station Hangar"
	landmark_tag = "nav_orbital_hangar_pod"

/* example
/obj/effect/shuttle_landmark/docking_arm_starboard
	name = "Tradeship Starboard-side Docking Arm"
	docking_controller = "tradeship_starboard_dock"*/

