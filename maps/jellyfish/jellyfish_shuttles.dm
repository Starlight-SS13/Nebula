/* Shuttles

Catfish - Heavy Shuttle
Galileo - Transport Shuttle
Kite    - Light Transport Pod

*/

/obj/effect/overmap/visitable/ship/landable/shuttle
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/Initialize()
	. = ..()
	name = "shuttle console ([shuttle_tag])"

/area/jelly/shuttle
	icon_state = "shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	turf_initializer = /decl/turf_initializer/maintenance/heavy/jelly

//Catfish

/obj/machinery/computer/shuttle_control/explore/catfish
	shuttle_tag = "Catfish"

/datum/shuttle/autodock/overmap/catfish
	name = "Catfish"
	shuttle_area = /area/jelly/shuttle/catfish
	current_location = "nav_dock_catfish"

/area/jelly/shuttle/catfish
	name = "Catfish"

/obj/effect/overmap/visitable/ship/landable/shuttle/catfish
	name = "Catfish"
	shuttle = "Catfish"

/obj/effect/shuttle_landmark/jelly/dock_catfish
	name = "Catfish Docking Port"
	landmark_tag = "nav_dock_catfish"

//Galileo

/obj/machinery/computer/shuttle_control/explore/galileo
	shuttle_tag = "Galileo"

/datum/shuttle/autodock/overmap/galileo
	name = "Galileo"
	shuttle_area = /area/jelly/shuttle/galileo
	current_location = "nav_dock_galileo"

/area/jelly/shuttle/galileo
	name = "Galileo"

/obj/effect/overmap/visitable/ship/landable/shuttle/galileo
	name = "Galileo"
	shuttle = "Galileo"

/obj/effect/shuttle_landmark/jelly/dock_galileo
	name = "Galileo Docking Port"
	landmark_tag = "nav_dock_galileo"

//Kite

/obj/machinery/computer/shuttle_control/explore/kite
	shuttle_tag = "Kite"

/datum/shuttle/autodock/overmap/kite
	name = "Kite"
	shuttle_area = /area/jelly/shuttle/kite
	current_location = "nav_dock_kite"

/area/jelly/shuttle/kite
	name = "Kite"

/obj/effect/overmap/visitable/ship/landable/shuttle/kite
	name = "Kite"
	shuttle = "Kite"

/obj/effect/shuttle_landmark/jelly/dock_kite
	name = "Kite Docking Port"
	landmark_tag = "nav_dock_kite"

//rotary airlock

/obj/machinery/rotary_access
	name = "rotary access door"
	desc = "Rotating tube used generally used for easy exterior/interior access points."

	icon = 'icons/obj/machines/massdriver.dmi' //spriter crisis
	icon_state = "mass_driver"

	idle_power_usage = 300

	anchored = 1
	opacity  = 1

/obj/machinery/rotary_access/on_update_icon()
	if(!operable())
		set_light(0)
		return
	set_light(0.4, 0.1, 1, 0.5, COLOR_RED_LIGHT)

/obj/machinery/rotary_access/attack_hand(var/mob/user)
	if(!operable() || !isliving(user) || !(get_dir(src,user) in global.cardinal))
		to_chat(user,SPAN_DANGER("\the [src] refuses to operate."))
		return
	var/godir = (user.loc == get_step(src,dir) ? global.reverse_dir[dir] : dir)
	var/turf/exit = get_step(src,godir)
	var/obj/machinery/rotary_access/docked = locate() in exit
	if(docked) exit = get_step(docked,godir)

	if(exit.contains_dense_objects())
		to_chat(user,SPAN_DANGER("Something is blocking the hatch."))
		return

	if(do_after(user,20,src))
		user.forceMove(exit)
		playsound(exit, 'sound/machines/airlock_ext_open.ogg', 60, 0)