//Very questionable..

/obj/machinery/door/airlock
	autoclose = 0 //Woah, u mad? No

/obj/machinery/door/airlock/Bumped(atom/AM)
	if(panel_open || operating) return
	if(ismob(AM))
		var/mob/M = AM
		if(world.time - M.last_bumped <= 10) return
		M.last_bumped = world.time
		if(!M.restrained() && (!issmall(M) || ishuman(M) || issilicon(M)))
			do_animate("deny")
		return

/obj/machinery/door/airlock/hatch/jelly/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")
	new/obj/machinery/door/firedoor(get_turf(src))

//lights

/obj/item/light/tube
	broken_chance = 0

	b_max_bright  = 0.3
	b_inner_range = 0.1
	b_outer_range = 8
	b_curve       = 0.9
	b_colour      = "#f5dd2a"

	lighting_modes = list(LIGHTMODE_EMERGENCY = list(l_color = "#da0205"))

/obj/item/light/bulb
	broken_chance = 0

	b_max_bright  = 0.6
	b_inner_range = 0.1
	b_outer_range = 2
	b_curve       = 1
	b_colour      = "#f5dd2a"

	lighting_modes = list(LIGHTMODE_EMERGENCY = list(l_color = "#da0205"))

//Fusion engines, since they're bugged..

/datum/extension/ship_engine/gas/fusion/get_propellant(var/sample_only = TRUE)
	var/obj/machinery/atmospherics/unary/engine/fusion/thruster = holder
	if(!thruster.harvest_from || !thruster.harvest_from.owned_field) return
	var/obj/effect/fusion_em_field/owned_field = thruster.harvest_from.owned_field
	var/datum/gas_mixture/propellant = ..()
	propellant.temperature = owned_field.plasma_temperature * 3
	return propellant

/obj/machinery/atmospherics/unary/engine/fusion/Initialize()
	. = ..()
	harvest_from   = locate(/obj/machinery/power/fusion_core) in get_area(src)

/obj/machinery/ion_thruster
	thrust_limit   = 30

//Netdevices + headsets

/datum/extension/network_device/broadcaster/relay
	long_range     = 1

/obj/machinery/network/mainframe/on_update_icon()
	if(operable())
		icon_state = "server-on"
	else
		icon_state = "server-off"