//Helper, use it

#define JELLY_SHUTTLE(NAME)                         \
/datum/shuttle/autodock/overmap/##NAME              \
	name             = #NAME                        \
	shuttle_area     = /area/jelly/shuttle/##NAME   \
	dock_target      = "shuttle_"     + #NAME       \
	current_location = "nav_shuttle_" + #NAME       \
\
/area/jelly/shuttle/##NAME                          \
	name       = #NAME                              \
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT   \
\
/obj/effect/overmap/visitable/ship/landable/##NAME        \
	name    = "Shuttle - "  + #NAME                       \
	shuttle = #NAME                                       \
\
/obj/effect/shuttle_landmark/##NAME                          \
	name               = "Docking Port (" + #NAME + ")"      \
	landmark_tag       = "nav_shuttle_"   + #NAME            \
	docking_controller = "shuttle_dock_"  + #NAME            \
\
/obj/machinery/computer/shuttle_control/explore/research     \
	name        = "shuttle console (" + #NAME + ")"          \
	shuttle_tag = #NAME                                      \

/obj/effect/airlock_helper/shuttle/##NAME                    \
	name              = "Airlock Helper - Shuttle " + #NAME  \
	main_id           = "shuttle_"     + #NAME               \

/obj/effect/airlock_helper/dock/##NAME                        \
	name              = "Airlock Helper - " + #NAME + " Dock" \
	main_id           = "shuttle_dock_"     + #NAME           \
}

JELLY_SHUTTLE("Galileo VII")