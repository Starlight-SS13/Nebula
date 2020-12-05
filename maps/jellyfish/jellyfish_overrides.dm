//Generally visual overrides here, lighting and etc

/obj/machinery/door/airlock
	autoclose = 0 //Woah, u mad? No

/obj/machinery/door/airlock/power_change()
	. = ..()
	if(arePowerSystemsOn())
		set_light(0.1, 0.1, 1, 1, "#f54029")
	else
		set_light(0)

/obj/machinery/door/airlock/hatch/jelly/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

//lights

/obj/item/light/tube
	broken_chance = 0

	b_max_bright  = 0.2
	b_inner_range = 0.1
	b_outer_range = 8
	b_curve       = 1
	b_colour      = "#822f24"

	lighting_modes = list(
		LIGHTMODE_EMERGENCY = list(l_outer_range = 4, l_max_bright = 1, l_color = "#da0205"),
		)

/obj/item/light/bulb
	broken_chance = 0

	b_max_bright  = 0.1
	b_inner_range = 0.1
	b_outer_range = 2
	b_curve       = 2
	b_colour      = "#822f24"

	lighting_modes = list(
		LIGHTMODE_EMERGENCY = list(l_outer_range = 3, l_max_bright = 1, l_color = "#da0205"),
		)