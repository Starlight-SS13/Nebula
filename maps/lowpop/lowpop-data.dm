/world/New()
	..()
	game_year = (text2num(time2text(world.realtime, "YYYY")) + 56) //2076

/datum/map/lowpop
	allowed_jobs = list(/datum/job/assistant,/datum/job/assistant/head)
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/lowpop = NO_SCRUBBER|NO_VENT,
		/area/ship/lowpop_shuttle = NO_SCRUBBER|NO_VENT
	)

//IDs are used only to recognize fellows, sorry.

/obj/machinery/Initialize()
	. = ..()
	initial_access = list()
	req_access = list()

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has completed revival in cryogenics bay"
	disallow_job = list("Robot")

//Only two jobs

/datum/job/assistant ///datum/job/lowpop
	title = "Outpost Dweller"
	supervisors = "the Outpost Head"
	total_positions = 7
	spawn_positions = 7

	outfit_type = /decl/hierarchy/outfit/lowpop
	selection_color = "#704a36"
	department_refs = list(DEPT_ENGINEERING)

	max_skill = list(
		SKILL_LITERACY = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_MECH = SKILL_MAX,
		SKILL_PILOT = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_COMBAT = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL = SKILL_MAX,
		SKILL_ATMOS = SKILL_MAX,
		SKILL_ENGINES = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_MEDICAL = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)

	skill_points = 36

	alt_titles = list("Engineer"=/decl/hierarchy/outfit/lowpop/engi,"Doctor"=/decl/hierarchy/outfit/lowpop/doc,"Sensor Technician"=/decl/hierarchy/outfit/lowpop/tech)

/datum/job/assistant/head ///datum/job/lowpop/head
	title = "Outpost Head"
	supervisors = "your command"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#4824a3"
	alt_titles = list()

//Outfits

/decl/hierarchy/outfit/lowpop
	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/color/white
	id_type = /obj/item/card/id/civilian
	id_slot = slot_wear_id_str
	flags = OUTFIT_HAS_BACKPACK

/decl/hierarchy/outfit/lowpop/engi
	uniform = /obj/item/clothing/under/hazard
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full

/decl/hierarchy/outfit/lowpop/doc
	uniform = /obj/item/clothing/under/sterile
	shoes = /obj/item/clothing/shoes/color/white
	l_pocket = /obj/item/scanner/health

/decl/hierarchy/outfit/lowpop/tech
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/color/black

//Areas

/area/lowpop
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/lowpop/hall
	name = "Main Hall"

/area/lowpop/hall/smelter
	name = "Smelter Installation"

/area/lowpop/hall/kitchen
	name = "Kitchen"

/area/lowpop/eng
	name = "Engineering"

/area/lowpop/hab_ring
	name = "Habitation Ring"

/area/lowpop/hab_ring/med
	name = "Medical Point"

/area/lowpop/hab_ring/sensor
	name = "Operations"

/area/lowpop/dock
	name = "Storage"

//Overmap object and shuttles

/obj/effect/overmap/visitable/ship/lowpop //It is ship for sensors
	name = "listening station"
	desc = "Sensors detect a small outpost."
	icon_state = "object"
	free_landing = TRUE
	initial_restricted_waypoints = list("Utility Shuttle" = list("nav_lowpop_dock"))

//Utility shuttle

/obj/effect/shuttle_landmark/lowpop_dock
	name = "Main Docking Port"
	landmark_tag = "nav_lowpop_dock"
	docking_controller = "utility_shuttle_dock"

/obj/machinery/computer/shuttle_control/explore/lowpop
	name = "utility shuttle computer"
	shuttle_tag = "Utility Shuttle"

/area/ship/lowpop_shuttle
	name = "Utility Shuttle"

/datum/shuttle/autodock/overmap/lowpop
	name = "Utility Shuttle"
	shuttle_area = /area/ship/lowpop_shuttle
	dock_target = "utility_shuttle"
	current_location = "nav_lowpop_dock"

/obj/effect/overmap/visitable/ship/landable/lowpop_shuttle
	name = "Utility Shuttle"
	shuttle = "Utility Shuttle"
	vessel_size = SHIP_SIZE_TINY

//Trade console

/datum/computer_file/program/merchant/orbital
	required_access = null

/obj/machinery/computer/modular/preset/merchant/orbital
	default_software = list(
		/datum/computer_file/program/merchant/orbital,
		/datum/computer_file/program/wordprocessor
	)