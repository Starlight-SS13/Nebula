/datum/job
	department_refs = list(DEPT_CIVILIAN)
	skill_points    = 26
	outfit_type     = /decl/hierarchy/outfit/job/tethys

//com

/datum/job/director
	title       = "Colony Director"
	supervisors = "your conscience, law, and command orders"

	outfit_type = /decl/hierarchy/outfit/job/tethys/director

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_SCIENCE  = SKILL_ADEPT,
		SKILL_PILOT    = SKILL_ADEPT)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX
	)

	skill_points          = 32
	department_refs       = list(DEPT_COMMAND)
	total_positions       = 1
	spawn_positions       = 1
	selection_color       = "#1d1d4f"
	req_admin_notify      = TRUE
	head_position         = TRUE
	access                = list()
	minimal_access        = list()
	minimal_player_age    = 14
	economic_power        = 20
	ideal_character_age   = 70
	guestbanned           = TRUE
	must_fill             = TRUE
	not_random_selectable = TRUE

/datum/job/director/get_access()
	return get_all_station_access()

/datum/job/hop
	title = "Head of Personnel"
	supervisors = "the Colony Director"

	outfit_type = /decl/hierarchy/outfit/job/tethys/hop

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT =   SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX
	)

	hud_icon = "hudheadofpersonnel"
	head_position = 1
	department_refs = list(
		DEPT_COMMAND,
		DEPT_CIVILIAN
	)
	total_positions       = 1
	spawn_positions       = 1
	selection_color       = "#2f2f7f"
	req_admin_notify      = TRUE
	minimal_player_age    = 14
	economic_power        = 10
	ideal_character_age   = 50
	guestbanned           = TRUE
	not_random_selectable = TRUE

	access = list(
		access_security,
		access_sec_doors,
		access_brig,
		access_forensics_lockers,
		access_heads,
		access_medical,
		access_engine,
		access_change_ids,
		access_ai_upload,
		access_eva,
		access_bridge,
		access_all_personal_lockers,
		access_maint_tunnels,
		access_bar,
		access_janitor,
		access_construction,
		access_morgue,
		access_crematorium,
		access_kitchen,
		access_cargo,
		access_cargo_bot,
		access_mailsorting,
		access_qm,
		access_hydroponics,
		access_lawyer,
		access_chapel_office,
		access_library,
		access_research,
		access_mining,
		access_heads_vault,
		access_mining_station,
		access_hop,
		access_RC_announce,
		access_keycard_auth,
		access_gateway
	)
	minimal_access = list(
		access_security,
		access_sec_doors,
		access_brig,
		access_forensics_lockers,
		access_heads,
		access_medical,
		access_engine,
		access_change_ids,
		access_ai_upload,
		access_eva,
		access_bridge,
		access_all_personal_lockers,
		access_maint_tunnels,
		access_bar,
		access_janitor,
		access_construction,
		access_morgue,
		access_crematorium,
		access_kitchen,
		access_cargo,
		access_cargo_bot,
		access_mailsorting,
		access_qm,
		access_hydroponics,
		access_lawyer,
		access_chapel_office,
		access_library,
		access_research,
		access_mining,
		access_heads_vault,
		access_mining_station,
		access_hop,
		access_RC_announce,
		access_keycard_auth,
		access_gateway
	)

	skill_points = 30
	alt_titles = list()
