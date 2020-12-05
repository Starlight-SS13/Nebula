/datum/map/jellyfish
	default_law_type        = /datum/ai_laws/asimov
	default_assistant_title = "Technical Assistant"

	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/ai,
	)

/obj/machinery/suit_cycler
	initial_access = list()

/obj/machinery/suit_cycler/jelly
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	suit   = /obj/item/clothing/suit/space/void/engineering/salvage
	boots  = /obj/item/clothing/shoes/magboots