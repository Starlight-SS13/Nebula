/datum/map/tethys
	default_law_type = /datum/ai_laws/asimov
	default_assistant_title = "Colonist"
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/director,
		/datum/job/hop,
		/datum/job/engineer/head,
		/datum/job/doctor,
		/datum/job/doctor/head,
		/datum/job/researcher,
		/datum/job/researcher/head,
		/datum/job/engineer
	)

/obj/machinery/suit_cycler/tethys
	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	suit   = /obj/item/clothing/suit/space/void/engineering
	boots  = /obj/item/clothing/shoes/magboots
	initial_access = list()

/obj/machinery/suit_cycler/tethys/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	suit   = /obj/item/clothing/suit/space/void/engineering/salvage
