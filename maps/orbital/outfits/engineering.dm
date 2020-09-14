/decl/hierarchy/outfit/job/orbital/hand/engine
	name = ORBITAL_OUTFIT_JOB_NAME("Engineer")
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	id_type = /obj/item/card/id/orbital/engineering
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full
	r_pocket = /obj/item/radio

/obj/item/card/id/orbital/engineering
	name = "identification card"
	desc = "A card issued to engineering staff."
	job_access_type = /datum/job/orbital_engineer
	detail_color = COLOR_SUN

/decl/hierarchy/outfit/job/orbital/chief_engineer
	name = ORBITAL_OUTFIT_JOB_NAME("Head Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	belt = /obj/item/storage/belt/utility/full
	id_type = /obj/item/card/id/orbital/engineering/head
	r_pocket = /obj/item/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/obj/item/card/id/orbital/engineering/head
	name = "identification card"
	desc = "A card which represents creativity and ingenuity."
	job_access_type = /datum/job/orbital_engineer/head
	extra_details = list("goldstripe")
