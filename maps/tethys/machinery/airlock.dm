/obj/machinery/door/airlock/hatch/tethys/Initialize()
	. = ..()
	var/obj/effect/floor_decal/industrial/hatch/yellow/decal
	var/obj/machinery/door/firedoor/fire
	if(!(locate(decal) in loc)) decal = new(loc)
	if(!(locate(fire)  in loc)) fire  = new(loc)
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/machinery/door/airlock/hatch/tethys/eng
	stripe_color = COLOR_WARM_YELLOW

/obj/machinery/door/airlock/hatch/tethys/med
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/hatch/tethys/com
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/tethys/sci
	stripe_color = COLOR_RESEARCH
