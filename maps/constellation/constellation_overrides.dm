/datum/computer_file/program/merchant/constellation
	required_access = null

/obj/machinery/computer/modular/preset/merchant/constellation
	default_software = list(
		/datum/computer_file/program/merchant/constellation,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/wordprocessor
	)

//sleeping pod (stasis)

/obj/machinery/sleeper/stasis
	name            = "sleeping pod"
	desc            = "Comfortable capsule fitted with high-power stasis field generators."
	icon_state      = "pod"
	stasis_power    = 100

/obj/machinery/sleeper/stasis/add_reagent_canister(var/mob/user, var/obj/item/chems/chem_disp_cartridge/canister)
	to_chat(user, SPAN_WARNING("\The [src] can't be loaded with chemical canisters!"))
	return FALSE

/obj/machinery/sleeper/stasis/on_update_icon()
	overlays.Cut()
	icon_state = "pod"
	if(occupant)
		var/image/pickle  = new
		pickle.appearance = occupant
		pickle.layer      = FLOAT_LAYER
		pickle.pixel_z    = 12
		overlays += pickle
	var/image/I   = image(icon, "lid[!!(occupant && !(stat & (BROKEN|NOPOWER)))]")
	overlays     += I

/obj/item/stock_parts/circuitboard/sleeper/stasis
	name           = T_BOARD("sleeping pod")
	build_path     = /obj/machinery/sleeper/stasis
	req_components = list(/obj/item/stock_parts/scanning_module = 2, /obj/item/stock_parts/manipulator = 2)

//Safe supermatter

/obj/machinery/power/supermatter/energy
	name = "energy crystal"
	desc = "A strangely translucent and iridescent crystal."

	icon_state      = "darkmatter_shard"
	base_icon_state = "darkmatter_shard"

	color                      = COLOR_YELLOW
	light_color                = COLOR_YELLOW
	thermal_release_modifier   = 1000
	critical_temperature       = 8000

	product_release_modifier   = -2
	oxygen_release_modifier    = -2
	radiation_release_modifier = 0
	config_hallucination_power = 0

/obj/machinery/power/supermatter/energy/attack_hand(var/mob/user)
	visible_message(SPAN_NOTICE("[user] gently taps \the [src]."))

/obj/machinery/power/supermatter/energy/attackby(var/obj/item/W, var/mob/living/user)
	visible_message(SPAN_NOTICE("[user] gently taps \the [src] with [W]."))

/obj/machinery/power/supermatter/energy/Bumped()
	return

//hot-cold

/obj/machinery/power/supermatter/energy/hot
	color                    = COLOR_RED
	light_color              = COLOR_RED
	thermal_release_modifier = 2500

/obj/machinery/power/supermatter/energy/cold
	color                    = COLOR_CYAN
	light_color              = COLOR_CYAN
	thermal_release_modifier = -2500