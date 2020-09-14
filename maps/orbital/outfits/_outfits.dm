// OUTFITS
#define ORBITAL_OUTFIT_JOB_NAME(job_name) ("Orbital - Job - " + job_name)

/decl/hierarchy/outfit/job/orbital
	hierarchy_type = /decl/hierarchy/outfit/job/orbital
	pda_type = null //NO
	pda_slot = slot_l_store_str
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/orbital/hand
	name = ORBITAL_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/orbital/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls, /obj/item/clothing/under/hazard, /obj/item/clothing/under/rank/cargotech, /obj/item/clothing/under/color/black, /obj/item/clothing/under/color/grey, /obj/item/clothing/under/casual_pants/track))

/decl/hierarchy/outfit/job/orbital/hand/cook
	name = ORBITAL_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
