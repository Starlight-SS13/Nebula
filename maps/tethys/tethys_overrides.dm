/area/space
	name        = "open ocean"
	icon_state  = "ocean"
	icon        = 'maps/tethys/media/areas.dmi'
	base_turf   = /turf/exterior/seafloor

/area/space/has_gravity()
	return TRUE

/turf/c_airblock(turf/other)
	if(get_fluid_depth() >= FLUID_OVER_MOB_HEAD)
		return BLOCKED
	. = ..()

/datum/computer_file/program/merchant
	required_access = null

/obj/machinery/power/smes/buildable/tethys
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil/super_capacity = 4)

/obj/machinery/power/port_gen/pacman/super/potato
	desc           = "PTTO-3, an industrial all-in-one nuclear power plant by Neo-Chernobyl GmbH. Rated for 250 kW max safe output."
	power_gen      = 250 KILOWATTS
	time_per_sheet = 7200

/obj/machinery/suit_cycler/mining
	helmet = /obj/item/clothing/head/helmet/space/void/mining
	suit = /obj/item/clothing/suit/space/void/mining
	boots = /obj/item/clothing/shoes/magboots
