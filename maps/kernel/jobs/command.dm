/datum/job/kernel/command/captain
	title = "Captain"
	total_positions = 1
	spawn_positions = 1

	outfit_type = /decl/hierarchy/outfit/job/kernel/captain

	skill_points = 30

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)

	minimal_player_age    = 14
	economic_power        = 20
	ideal_character_age   = 70

	head_position         = TRUE
	req_admin_notify      = TRUE
	guestbanned           = TRUE
	must_fill             = TRUE
	not_random_selectable = TRUE

/datum/job/kernel/command/captain/get_access()
	return get_all_station_access()
