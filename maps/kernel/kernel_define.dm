/datum/map/kernel
	name = "Kernel"
	full_name = "Space Station Kernel"
	path = "kernel"

	lobby_screens = list('kernel_lobby.gif')

	station_levels = list(1, 2, 3, 4)
	contact_levels = list(1, 2, 3, 4)
	player_levels  = list(1, 2, 3, 4)

	station_name  = "Space Station Kernel"
	station_short = "Kernel"

	dock_name     = "NTTM1-54 Relay"
	boss_name     = "Colonial Magistrate Council"
	boss_short    = "Council"
	company_name  = "Colonial Magistrate Authority"
	company_short = "CMA"

	system_name = "somewhere in space"

	map_admin_faxes = list("Colonial Magistrate Authority")

	overmap_event_areas = 11
	use_overmap = 1
	num_exoplanets = 0

	emergency_shuttle_leaving_dock   = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	starting_money = 1000
	department_money = 0
	salary_modifier = 0.1

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Ensure that all the data about it is recorded. Cut all EVA immediately."

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

/datum/map/kernel/get_map_info()
	return "<b>[station_name]</b> - a space station located at the very frontier of explored space."
