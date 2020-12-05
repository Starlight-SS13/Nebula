/obj/effect/airlock_helper
	icon       = 'icons/obj/objects.dmi'
	icon_state = "officechair_white"
	var/main_id = null

/obj/effect/airlock_helper/New()
	var/obj/machinery/door/airlock/external/bolted/EXT = new()
	var/obj/machinery/door/airlock/external/bolted/INT = new()
	var/backdir
	switch(dir)
		if(NORTH)
			backdir = SOUTH
		if(SOUTH)
			backdir = NORTH
		if(WEST)
			backdir = EAST
		if(EAST)
			backdir = WEST

	EXT.id_tag = "[main_id]_external"
	INT.id_tag = "[main_id]_internal"

	EXT.loc = get_step(src,dir)
	INT.loc = get_step(src,backdir)

	var/obj/machinery/airlock_sensor/SEN = new(loc)
	SEN.id_tag = "[main_id]_sensor"

	var/obj/machinery/atmospherics/unary/vent_pump/high_volume/external_air/VENT = new(loc)
	VENT.dir    = backdir
	VENT.id_tag = "[main_id]_pump"

	var/obj/machinery/embedded_controller/radio/airlock/docking_port/CON    = new(loc)
	CON.id_tag             = main_id
	CON.tag_airpump        = VENT.id_tag
	CON.tag_chamber_sensor = SEN.id_tag
	CON.tag_exterior_door  = EXT.id_tag
	CON.tag_interior_door  = INT.id_tag

	var/obj/machinery/button/access/exterior/EB = new()
	var/obj/machinery/button/access/interior/IB = new()
	EB.id_tag = CON.id_tag
	IB.id_tag = CON.id_tag

	EB.loc = get_step(src,dir)
	IB.loc = get_step(src,backdir)

	switch(dir)

		if(NORTH)
			SEN.pixel_x =  24
			CON.pixel_x = -24
			EB.pixel_x  = -24
			EB.pixel_y  =  10
			IB.pixel_x  = -24
			IB.pixel_y  = -10

		if(SOUTH)
			SEN.pixel_x = -24
			CON.pixel_x =  24
			EB.pixel_x  = -24
			EB.pixel_y  = -10
			IB.pixel_x  = -24
			IB.pixel_y  =  10

		if(WEST)
			SEN.pixel_y =  24
			CON.pixel_y = -24
			EB.pixel_y  = -24
			EB.pixel_x  = -10
			IB.pixel_y  = -24
			IB.pixel_x  =  10

		if(EAST)
			SEN.pixel_y = -24
			CON.pixel_y =  24
			EB.pixel_y  = -24
			EB.pixel_x  =  10
			IB.pixel_y  = -24
			IB.pixel_x  = -10

	qdel(src)