//Simple harcoded helper for creating basic airlocks

//To use:

//Add helper facing to the exterior of your shuttle/ship/server
//Add two exterior airlocks
//Add an airlock vent
//Done! If you are making shuttle, you can make a preset for specific helper with ID (as its done on jellyfish, see jellyfish_shuttles.dm)
// + add a docking controller, it will fail tests without it

/obj/effect/airlock_helper
	icon       = 'icons/obj/objects.dmi'
	icon_state = "officechair_white"
	var/main_id = null
	var/shuttle = 0

/obj/effect/airlock_helper/Initialize()
	. = ..()
	if(!main_id)
		main_id = "airlock_[sequential_id(type)]"

	var/backdir = GLOB.reverse_dir[dir]
	var/turf/fore = get_step(src,dir)
	var/turf/back = get_step(src,backdir)

//Things..

	var/obj/machinery/door/airlock/external/door_exterior
	if(shuttle) door_exterior = locate() in get_step(fore,dir)
	else        door_exterior = locate() in fore

	var/obj/machinery/door/airlock/external/door_interior = locate() in back
	var/obj/machinery/airlock_sensor/sensor               = new(loc)
	var/obj/machinery/atmospherics/unary/vent_pump/high_volume/external_air/default_vent = locate() in loc
	var/obj/machinery/embedded_controller/radio/airlock/docking_port/controller          = locate() in loc
	if(!controller) controller = new(loc)

//Access buttons

	var/obj/machinery/button/access/exterior/exterior_button = new(loc)
	var/obj/machinery/button/access/interior/interior_button = new(loc)
	EB.id_tag = CON.id_tag

//Assign tags

	door_exterior.id_tag = "[main_id]_external"
	door_interior.id_tag = "[main_id]_internal"
	sensor.id_tag        = "[main_id]_sensor"
	default_vent.id_tag  = "[main_id]_pump"

	controller.id_tag             = main_id

	controller.tag_airpump        = default_vent.id_tag
	controller.tag_chamber_sensor = sensor.id_tag

	controller.tag_exterior_door  = door_exterior.id_tag
	exterior_button.id_tag        = main_id

	controller.tag_interior_door  = door_interior.id_tag
	interior_button.id_tag        = main_id

	controller.cycle_to_external_air = shuttle

//Move them

	door_exterior.loc = fore
	door_interior.loc = back

	exterior_button.loc = fore
	interior_button.loc = back

//Sensor is always on right wall, controller is on left

	switch(dir)

		if(NORTH)
			sensor.pixel_x     =  24
			controller.pixel_x = -24

			exterior_button.pixel_x  = -24
			exterior_button.pixel_y  =  10

			interior_button.pixel_x  = -24
			interior_button.pixel_y  = -10

		if(SOUTH)
			sensor.pixel_x     = -24
			controller.pixel_x =  24

			exterior_button.pixel_x  = -24
			exterior_button.pixel_y  = -10

			interior_button.pixel_x  = -24
			interior_button.pixel_y  =  10

		if(WEST)
			sensor.pixel_y     =  24
			controller.pixel_y = -24

			exterior_button.pixel_x  = -10
			exterior_button.pixel_y  =  24

			interior_button.pixel_x  =  10
			interior_button.pixel_y  =  24

		if(EAST)
			sensor.pixel_y     = -24
			controller.pixel_x =  24

			exterior_button.pixel_x  =  10
			exterior_button.pixel_y  =  24

			interior_button.pixel_x  = -10
			interior_button.pixel_y  =  24

	if(shuttle)
		var/obj/machinery/atmospherics/unary/vent_pump/high_volume/external_air/shuttle_vent = locate() in fore
		shuttle_vent.id_tag = "[main_id]_pump_out_internal"
		for(var/obj/machinery/atmospherics/unary/vent_pump/high_volume/external_air/shuttle_vent_ext in range(4,shuttle_vent))
			if(findtext(shuttle_vent_ext.id_tag,"pump") || shuttle_vent_ext.loc.loc != loc.loc) continue //so if it is already assigned..
			shuttle_vent_ext.id_tag = "[main_id]_pump_out_external"

	return INITIALIZE_HINT_QDEL

/obj/effect/airlock_helper/shuttle
	shuttle = 1
	color = "#ff0000"