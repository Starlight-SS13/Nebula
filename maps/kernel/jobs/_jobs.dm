/datum/map/kernel
	default_law_type = /datum/ai_laws/asimov
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/kernel/command/captain,
		/datum/job/kernel/command/logistics_officer,
		/datum/job/kernel/engineering/engineer,
		/datum/job/kernel/medical/doctor,
		/datum/job/kernel/science/researcher
	)

// God forgive me for this stub
/datum/job/kernel
	hud_icon = "hudblank"

/datum/job/assistant
	title = "Crewmember"

	skill_points = 16

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_HAULING = SKILL_MAX
	)
