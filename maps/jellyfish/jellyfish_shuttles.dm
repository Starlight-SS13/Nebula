/* Shuttles

Catfish - Heavy Shuttle
Galileo - Transport Shuttle
Kite    - Light Transport Pod

*/

/obj/effect/shuttle_landmark/jelly/New()
	..()
	var/obj/effect/overmap/visitable/ship/jelly/J = locate()
	if(!J || !(type in subtypesof(type)) ) return
	J.restricted_waypoints[splittext(name," ")[1]] = landmark_tag

/obj/machinery/computer/shuttle_control/explore/Initialize()
	. = ..()
	name = "shuttle console ([shuttle_tag])"

/area/jelly/shuttle
	icon_state = "shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/* Example

//Example

/obj/machinery/computer/shuttle_control/explore/example
	shuttle_tag = "Example"

/datum/shuttle/autodock/overmap/example
	name = "Example"
	shuttle_area = /area/jelly/shuttle/example
	dock_target = "example_airlock"
	current_location = "nav_dock_example"

/area/jelly/shuttle/example
	name = "Example"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/obj/effect/overmap/visitable/ship/landable/shuttle/example
	name = "Example"
	shuttle = "Example"

/obj/effect/shuttle_landmark/jelly/dock_example
	name = "Example Docking Port"
	landmark_tag = "nav_dock_example"
	docking_controller = "example_dock_airlock"

/obj/effect/airlock_helper/shuttle/example
	name = "Airlock Helper - Example Shuttle"
	main_id = "example_airlock"

/obj/effect/airlock_helper/dock/example
	name = "Airlock Helper - Example Shuttle Dock"
	main_id = "example_dock_airlock"

*/

//Catfish

/obj/machinery/computer/shuttle_control/explore/catfish
	shuttle_tag = "Catfish"

/datum/shuttle/autodock/overmap/catfish
	name = "Catfish"
	shuttle_area = /area/jelly/shuttle/catfish
	dock_target = "catfish_airlock"
	current_location = "nav_dock_catfish"

/area/jelly/shuttle/catfish
	name = "Catfish"

/obj/effect/overmap/visitable/ship/landable/shuttle/catfish
	name = "Catfish"
	shuttle = "Catfish"

/obj/effect/shuttle_landmark/jelly/dock_catfish
	name = "Catfish Docking Port"
	landmark_tag = "nav_dock_catfish"
	docking_controller = "catfish_dock_airlock"

/obj/effect/airlock_helper/shuttle/catfish
	name = "Airlock Helper - Catfish Shuttle"
	main_id = "catfish_airlock"

/obj/effect/airlock_helper/dock/catfish
	name = "Airlock Helper - Catfish Shuttle Dock"
	main_id = "catfish_dock_airlock"

//Galileo

/obj/machinery/computer/shuttle_control/explore/galileo
	shuttle_tag = "Galileo"

/datum/shuttle/autodock/overmap/galileo
	name = "Galileo"
	shuttle_area = /area/jelly/shuttle/galileo
	dock_target = "galileo_airlock"
	current_location = "nav_dock_galileo"

/area/jelly/shuttle/galileo
	name = "Galileo"

/obj/effect/overmap/visitable/ship/landable/shuttle/galileo
	name = "Galileo"
	shuttle = "Galileo"

/obj/effect/shuttle_landmark/jelly/dock_galileo
	name = "Galileo Docking Port"
	landmark_tag = "nav_dock_galileo"
	docking_controller = "galileo_dock_airlock"

/obj/effect/airlock_helper/shuttle/galileo
	name = "Airlock Helper - Galileo Shuttle"
	main_id = "galileo_airlock"

/obj/effect/airlock_helper/dock/galileo
	name = "Airlock Helper - Galileo Shuttle Dock"
	main_id = "galileo_dock_airlock"

//Kite

/obj/machinery/computer/shuttle_control/explore/kite
	shuttle_tag = "Kite"

/datum/shuttle/autodock/overmap/kite
	name = "Kite"
	shuttle_area = /area/jelly/shuttle/kite
	dock_target = "kite_airlock"
	current_location = "nav_dock_kite"

/area/jelly/shuttle/kite
	name = "Kite"

/obj/effect/overmap/visitable/ship/landable/shuttle/kite
	name = "Kite"
	shuttle = "Kite"

/obj/effect/shuttle_landmark/jelly/dock_kite
	name = "Kite Docking Port"
	landmark_tag = "nav_dock_kite"
	docking_controller = "kite_dock_airlock"

/obj/effect/airlock_helper/shuttle/kite
	name = "Airlock Helper - Kite Shuttle"
	main_id = "kite_airlock"

/obj/effect/airlock_helper/dock/kite
	name = "Airlock Helper - Kite Shuttle Dock"
	main_id = "kite_dock_airlock"