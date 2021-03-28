// Kernel jumpsuit
/obj/item/clothing/under/color/kernel
	name = "kernel jumpsuit"
	desc = "A stylish jumpsuit. This one have a kernel logo on it."
	color = "#444952"

// Basic outfit
/decl/hierarchy/outfit/job/kernel
	name = "Kernel Uniform - Crewmember"
	uniform = /obj/item/clothing/under/color/kernel
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store_str
	l_ear = null
	r_ear = null

// Captain outfit
/decl/hierarchy/outfit/job/kernel/captain
	name = "Kernel Uniform - Captain"
	uniform = /obj/item/clothing/pants/baggy/casual/classicjeans
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda/heads/captain
	r_pocket = /obj/item/radio
	id_type = /obj/item/card/id/gold

/decl/hierarchy/outfit/job/kernel/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

// Logistics Officer outfit
/decl/hierarchy/outfit/job/kernel/logistics_officer
	name = "Kernel Uniform - Logistics Officer"
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda/heads
	r_pocket = /obj/item/radio
	id_type = /obj/item/card/id/silver

// Engineering outfit
/decl/hierarchy/outfit/job/kernel/engineering
	name = "Kernel Uniform - Engineering"
	uniform = /obj/item/clothing/under/hazard
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full

// Medical outfit
/decl/hierarchy/outfit/job/kernel/medical
	name = "Kernel Uniform - Medical"
	uniform = /obj/item/clothing/under/sterile
	shoes = /obj/item/clothing/shoes/color/white
	l_pocket = /obj/item/scanner/health

// Science outfit
/decl/hierarchy/outfit/job/kernel/science
	name = "Kernel Uniform - Science"
	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/color/black
	l_ear = /obj/item/radio/headset/headset_sci
