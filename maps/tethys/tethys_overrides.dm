//merch prog

/datum/computer_file/program/merchant
	required_access = null

//SMES preset + potato buff

/obj/machinery/power/port_gen/pacman/super/potato
	desc           = "PTTO-3, an industrial all-in-one nuclear power plant by Neo-Chernobyl GmbH. Uses uranium as a fuel source."
	power_gen      = 250 KILOWATTS
	time_per_sheet = 7200

/obj/machinery/power/smes/buildable/tethys
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil/super_capacity = 4)

//prefilled lathe
/*
/obj/machinery/fabricator/tethys/Initialize()
	. = ..()
	stored_material[/decl/material/solid/metal/steel]     = base_storage_capacity[/decl/material/solid/metal/steel]
	stored_material[/decl/material/solid/metal/aluminium] = base_storage_capacity[/decl/material/solid/metal/aluminium]
	stored_material[/decl/material/solid/glass]           = base_storage_capacity[/decl/material/solid/glass]
	stored_material[/decl/material/solid/plastic]         = base_storage_capacity[/decl/material/solid/plastic]
*/
