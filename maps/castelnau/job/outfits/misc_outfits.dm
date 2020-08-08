/decl/hierarchy/outfit/job/castelnau/crewman
	name = OUTFIT_JOB_NAME("Crewman - Castelnau")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/card/id/castelnau/crewman

/decl/hierarchy/outfit/job/castelnau/stowaway
	name = OUTFIT_JOB_NAME("Stowaway - Castelnau")
	id_type = null
	pda_type = null
	l_ear = null
	l_pocket = /obj/item/wrench
	r_pocket = /obj/item/crowbar

/decl/hierarchy/outfit/job/castelnau/stowaway/post_equip(var/mob/living/carbon/human/H)
	..()

/decl/hierarchy/outfit/job/castelnau/ert
	name = OUTFIT_JOB_NAME("ERT - Castelnau")
	uniform = /obj/item/clothing/under/syndicate
	head = /obj/item/clothing/head/soft/black
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/ert
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/castelnau/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Castelnau")
	head = /obj/item/clothing/head/beret
