/datum/map/loop
	path = "loop"

	name          = "\"The Loop\" Complex"
	full_name     = "\"The Loop\" Underwater Complex"
	station_name  = "\"the Loop\" Underwater Complex"
	station_short = "\"the Loop\""

	dock_name     = "UES-7"
	boss_name     = "UE Command"
	boss_short    = "UE Admiral"
	company_name  = "United Europa"
	company_short = "UE"

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels  = list(1,2,3)

	emergency_shuttle_leaving_dock   = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Ensure that all the data about it is recorded. Cut all EVA immediately."

	starting_money   = 1000
	department_money = 0
	salary_modifier  = 1.4

	allowed_spawns = list("Cryogenic Storage")
	default_spawn  = "Cryogenic Storage"

/datum/map/loop/get_map_info()
	return "<b>[station_name]</b> - a tiny outpost located in the deep waters of europa."