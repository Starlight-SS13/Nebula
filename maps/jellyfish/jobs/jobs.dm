//Outfits

/decl/hierarchy/outfit/job/jelly
	name = "Jellyfish Uniform"
	gloves   = /obj/item/clothing/gloves/thick
	uniform  = /obj/item/clothing/under/color/black
	shoes    = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/pager
	r_pocket = /obj/item/flashlight
	l_ear    = null

/decl/hierarchy/outfit/job/jelly/eng
	name = "Jellyfish Uniform - Engineering"
	belt     = /obj/item/storage/belt/utility/full
	glasses  = /obj/item/clothing/glasses/welding

/decl/hierarchy/outfit/job/jelly/med
	name = "Jellyfish Uniform - Medical"
	belt     = /obj/item/scanner/health
	glasses  = /obj/item/clothing/glasses/hud/health

//Jobs

/datum/job
	guestbanned = 1

/datum/job/assistant
	title       = "Cargo Hand"
	alt_titles  = list("Technical Assistant")
	supervisors = "your captain, senior staff"
	outfit_type = /decl/hierarchy/outfit/job/jelly
	department_refs = list(DEPT_SUPPLY)
	hud_icon = "hudblank"

/datum/job/jelly
	skill_points = 24
	supervisors = "your captain"
	hud_icon = "hudblank"
	outfit_type  = /decl/hierarchy/outfit/job/jelly

/datum/job/jelly/engine
	title        = "Ship Technician"
	outfit_type  = /decl/hierarchy/outfit/job/jelly/eng
	alt_titles   = list("Reactor Technician","Engine Technician")

	min_skill = list(
		SKILL_LITERACY     = SKILL_ADEPT,
		SKILL_COMPUTER     = SKILL_BASIC,
		SKILL_EVA          = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL   = SKILL_BASIC,
		SKILL_ATMOS        = SKILL_BASIC,
		SKILL_ENGINES      = SKILL_BASIC
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL   = SKILL_MAX,
		SKILL_ATMOS        = SKILL_MAX,
		SKILL_ENGINES      = SKILL_MAX
	)

	access = list(
		access_eva,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_external_airlocks,
		access_construction,
		access_atmospherics,
		access_emergency_storage
	)

	department_refs = list(DEPT_ENGINEERING)
	total_positions = 6
	spawn_positions = 6

/datum/job/jelly/medical
	title        = "Medical Doctor"
	outfit_type  = /decl/hierarchy/outfit/job/jelly/med
	alt_titles   = list("Surgeon","Chemical Technician")

	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
	    SKILL_MEDICAL   = SKILL_EXPERT,
	    SKILL_ANATOMY   = SKILL_EXPERT,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
	    SKILL_ANATOMY   = SKILL_MAX,
	    SKILL_CHEMISTRY = SKILL_MAX
	)

	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology
	)

	department_refs = list(DEPT_MEDICAL)
	total_positions = 4
	spawn_positions = 4

/datum/job/jelly/miner
	title           = "Shaft Miner"
	alt_titles      = list("Pilot")

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX
	)

	department_refs = list(DEPT_SUPPLY)
	total_positions = 6
	spawn_positions = 6

/datum/job/jelly/captain
	title           = "Captain"
	supervisors = "your mad brain"
	head_position   = TRUE
	skill_points    = 32
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_PILOT    = SKILL_ADEPT
	)
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
	department_refs = list(DEPT_COMMAND)
	total_positions = 1
	spawn_positions = 1

/datum/job/jelly/captain/get_access()
	return get_all_station_access()