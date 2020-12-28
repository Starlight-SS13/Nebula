/datum/map/tethys
	path = "tethys"

	name           = "\"the Tethys\" Complex"
	full_name      = "\"the Tethys\" Underwater Complex"
	station_name   = "\"the Tethys\" Underwater Complex"
	station_short  = "\"the Tethys\""

	dock_name      = "Ro'Klarr"
	boss_name      = "Republic Council"
	boss_short     = "Executive Admiral"
	company_name   = "Republic Goverment"
	company_short  = "RG"

	lobby_screens = list('maps/tethys/media/tethys.png')
	lobby_tracks  = list(/music_track/darkspace1)

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels  = list(1,2,3)

	emergency_shuttle_leaving_dock   = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type             = /datum/evacuation_controller/lifepods

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Ensure that all areas all shielded properly. EVA cut recommended."

	starting_money   = 120000
	department_money = 9000
	salary_modifier  = 3

	allowed_spawns = list("Cryogenic Storage")
	default_spawn  = "Cryogenic Storage"