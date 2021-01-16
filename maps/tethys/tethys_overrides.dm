/datum/computer_file/program/merchant
	required_access = null

/obj/machinery/power/smes/buildable/tethys
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil/super_capacity = 4)

//crappy fix for current time being

/mob/living/exosuit/premade/random/boring/Initialize(mapload, var/obj/structure/heavy_vehicle_frame/source_frame)
	 . = ..(mapload, source_frame, using_boring_colours = TRUE)

/mob/living/exosuit/premade/random/extra/Initialize(mapload, var/obj/structure/heavy_vehicle_frame/source_frame)
	 . = ..(mapload, source_frame, super_random = TRUE)