/datum/map/tethys
	default_law_type        = /datum/ai_laws/asimov
	allowed_jobs            = list(/datum/job/assistant,
								   /datum/job/cyborg
	)

//Misc

/obj/machinery/suit_cycler
	initial_access = list()

/obj/machinery/suit_cycler/tethys
	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	suit   = /obj/item/clothing/suit/space/void/engineering
	boots  = /obj/item/clothing/shoes/magboots

/obj/machinery/suit_cycler/tethys/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	suit   = /obj/item/clothing/suit/space/void/engineering/salvage

//Jobs

/datum/job/tethys
	department_refs = list(DEPT_CIVILIAN)
	skill_points    = 26
	outfit_type     = /decl/hierarchy/outfit/job/tethys

//com

/datum/job/tethys/captain
	title       = "Captain"
	supervisors = "your conscience, law, and command orders"

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_SCIENCE  = SKILL_ADEPT,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX
	)
	skill_points          = 32

	department_refs       = list(DEPT_COMMAND)
	total_positions       = 1
	spawn_positions       = 1
	selection_color       = "#1d1d4f"

	req_admin_notify      = 1
	head_position         = 1

	access                = list()
	minimal_access        = list()

	minimal_player_age    = 14
	economic_power        = 20
	ideal_character_age   = 70
	guestbanned           = 1
	must_fill             = 1
	not_random_selectable = 1

/datum/job/tradeship_captain/get_access()
	return get_all_station_access()

//Outfits

/obj/item/clothing/under/color/tethys
	name  = "jumpsuit"
	color = "#444952"

/decl/hierarchy/outfit/job/tethys
	name           = "Tethys Uniform"
	hierarchy_type = /decl/hierarchy/outfit/job/tethys
	uniform        = /obj/item/clothing/under/color/tethys
	pda_slot       = slot_l_store_str
	l_ear          = null
	r_pocket       = /obj/item/radio

/decl/hierarchy/outfit/job/tethys/eng
	name           = "Engineering Tethys Uniform"
	uniform        = /obj/item/clothing/under/hazard
	shoes          = /obj/item/clothing/shoes/workboots
	belt           = /obj/item/storage/belt/utility/full

/decl/hierarchy/outfit/job/tethys/sec
	name           = "Security Tethys Uniform"
	uniform        = /obj/item/clothing/under/rank/security
	shoes          = /obj/item/clothing/shoes/jackboots
	belt           = /obj/item/storage/belt/holster/security

//Loadout

/datum/gear/weapons
	sort_category = "Weaponry"
	category      = /datum/gear/weapons

/datum/gear/weapons/small
	display_name = "laser revolver"
	path         = /obj/item/gun/projectile/revolver/lasvolver
	cost         = 4

/datum/gear/weapons/standard
	display_name = "pistol"
	path         = /obj/item/gun/projectile/pistol
	cost         = 2

/datum/gear/weapons/flash
	display_name = "flash"
	path         = /obj/item/flash

//Armor

/datum/gear/tactical/armor
	display_name = "armor suit selection"
	path = /obj/item/clothing/suit
	slot = slot_wear_suit_str

/obj/item/clothing/suit/armor/pcarrier/filled
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium,
								/obj/item/clothing/accessory/storage/pouches,
								/obj/item/clothing/accessory/armguards,
								/obj/item/clothing/accessory/legguards)

/datum/gear/tactical/armor/New()
	..()
	var/arms = list()
	arms["plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/filled
	arms["riot armor"] = /obj/item/clothing/suit/armor/riot
	arms["ballistic armor"] = /obj/item/clothing/suit/armor/bulletproof
	gear_tweaks += new/datum/gear_tweak/path(arms)

//Helmet

/datum/gear/tactical/helmet
	display_name = "helmet selection"
	path = /obj/item/clothing/head
	slot = slot_head_str

/datum/gear/tactical/helmet/New()
	..()
	var/helms = list()
	helms["helmet"] = /obj/item/clothing/head/helmet
	helms["riot helmet"] = /obj/item/clothing/head/helmet/riot
	helms["ballistic helmet"] = /obj/item/clothing/head/helmet/ballistic
	gear_tweaks += new/datum/gear_tweak/path(helms)

//Mask

/datum/gear/tactical/mask
	display_name = "gas mask selection"
	path = /obj/item/clothing/mask
	slot = slot_wear_mask_str

/datum/gear/tactical/mask/New()
	..()
	var/masks = list()
	masks["full mask"] = /obj/item/clothing/mask/gas
	masks["half mask"] = /obj/item/clothing/mask/gas/half
	masks["tactical mask"] = /obj/item/clothing/mask/gas/syndicate
	gear_tweaks += new/datum/gear_tweak/path(masks)

/datum/gear/tactical/holster
	cost = 1