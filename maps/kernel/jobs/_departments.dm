/datum/map/kernel
	default_law_type = /datum/ai_laws/asimov
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/kernel/command/captain,
		/datum/job/kernel/engineering/engineer,
		/datum/job/kernel/medical/doctor,
		/datum/job/kernel/science/researcher
	)

// Civilian
/datum/job/kernel/civilian
	selection_color = "#663300"
	department_types = list(/decl/department/civilian)
	supervisors = "the Captain and your lazy bone"

// Command
/datum/job/kernel/command
	selection_color = "#46698c"
	department_types = list(/decl/department/command)
	supervisors = "your conscience, law, and command orders"

// Engineering
/datum/job/kernel/engineering
	selection_color = "#ffbf00"
	department_types = list(/decl/department/engineering)
	supervisors = "the Captain and your wrench"
	outfit_type = /decl/hierarchy/outfit/job/kernel/engineering

// Medical
/datum/job/kernel/medical
	selection_color = "#92e7fc"
	department_types = list(/decl/department/medical)
	supervisors = "the Captain and the hippocratic oath"
	outfit_type = /decl/hierarchy/outfit/job/kernel/medical

// Science
/datum/job/kernel/science
	selection_color = "#9933ff"
	department_types = list(/decl/department/science)
	supervisors = "the Captain and your big brains"
	outfit_type = /decl/hierarchy/outfit/job/kernel/science

// Security (TODO)
/datum/job/kernel/security
	selection_color = "#9d2300"
	department_types = list(/decl/department/security)
	supervisors = "the Captain and your strong arms"
