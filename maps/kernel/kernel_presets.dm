//Network Presets

/obj/machinery/network/mainframe/unused
    initial_roles = list()

/obj/machinery/network/mainframe/full //yes i know it's pointless but for my own sanity
	initial_roles = list(
		MF_ROLE_FILESERVER,
		MF_ROLE_EMAIL_SERVER,
		MF_ROLE_LOG_SERVER,
		MF_ROLE_CREW_RECORDS,
		MF_ROLE_SOFTWARE)

/obj/machinery/network/mainframe/files
	initial_roles = list(MF_ROLE_FILESERVER)

/obj/machinery/network/mainframe/email
	initial_roles = list(MF_ROLE_EMAIL_SERVER)

/obj/machinery/network/mainframe/logs
	initial_roles = list(MF_ROLE_LOG_SERVER)

/obj/machinery/network/mainframe/records
	initial_roles = list(MF_ROLE_CREW_RECORDS)

/obj/machinery/network/mainframe/software
	initial_roles = list(MF_ROLE_SOFTWARE)

//Long-range relay for shuttles (new tcomms see ya)

/obj/machinery/network/relay/long_range
    name = "long-range network relay"
    base_type = /obj/machinery/network/relay/long_range
    network_device_type = /datum/extension/network_device/broadcaster/relay/long_range

/datum/extension/network_device/broadcaster/relay/long_range
    long_range = TRUE

/obj/item/stock_parts/circuitboard/relay/long_range
	name = "circuitboard (long-range relay)"
	build_path = /obj/machinery/network/relay/long_range
	origin_tech = "{'wormholes':4,'programming':4}"
	req_components = list(
		/obj/item/stock_parts/subspace/filter = 4,
		/obj/item/stock_parts/subspace/crystal = 4,
		/obj/item/stock_parts/computer/network_card = 1
	)

//Well. Just in case.. pls no halluc

/obj/machinery/power/supermatter
	name = "energy crystal"
	desc = "A strangely translucent and iridescent crystal, formerly known as the \"Supermatter\""
	config_hallucination_power = 0
	light_outer_range = 6

//Prefilled Fabs

/obj/machinery/fabricator
	var/prefilled = FALSE

/obj/machinery/fabricator/Initialize()
	. = ..()
	if(prefilled)
		stored_material = list()
		for(var/mat in storage_capacity) stored_material[mat] = storage_capacity[mat]

/obj/machinery/fabricator/filled
	prefilled = TRUE

/obj/machinery/fabricator/micro/filled
	prefilled = TRUE

/obj/machinery/fabricator/book/filled
	prefilled = TRUE

/obj/machinery/fabricator/imprinter/filled
	prefilled = TRUE

/obj/machinery/fabricator/industrial/filled
	prefilled = TRUE

/obj/machinery/fabricator/pipe/filled
	prefilled = TRUE

/obj/machinery/fabricator/protolathe/filled
	prefilled = TRUE

/obj/machinery/fabricator/robotics/filled
	prefilled = TRUE

/obj/machinery/fabricator/textile/filled
	prefilled = TRUE