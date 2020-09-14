/decl/hierarchy/outfit/job/orbital/hand/researcher
	name = ORBITAL_OUTFIT_JOB_NAME("Head Researcher")
	shoes = /obj/item/clothing/shoes/dress
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/card/id/orbital/science/head

/obj/item/card/id/orbital/science
	name = "identification card"
	desc = "A card issued to science staff."
	job_access_type = /datum/job/orbital_researcher
	detail_color = COLOR_PALE_PURPLE_GRAY

/decl/hierarchy/outfit/job/orbital/hand/researcher/junior
	name = ORBITAL_OUTFIT_JOB_NAME("Researcher")
	id_type = /obj/item/card/id/orbital/science

/obj/item/card/id/orbital/science/head
	name = "identification card"
	desc = "A card which represents knowledge and reasoning."
	job_access_type = /datum/job/orbital_researcher/head
	extra_details = list("goldstripe")
