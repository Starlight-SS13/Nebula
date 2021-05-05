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
