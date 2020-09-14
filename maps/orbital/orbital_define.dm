/datum/map/orbital
	name = "Orbital Station"
	full_name = "Orbital Station Omega"
	path = "orbital"
	ground_noun = "floor"

	station_levels = list(1, 2)
	contact_levels = list(1, 2)
	player_levels = list(1, 2)

	station_name  = "Orbital Station Omega"
	station_short = "Omega"

	dock_name     = "FTS Capitalist's Rest"
	boss_name     = "FTU Merchant Navy"
	boss_short    = "Merchant Admiral"
	company_name  = "Legit Cargo Ltd."
	company_short = "LC"
	overmap_event_areas = 11
	use_overmap = 1
	num_exoplanets = 1
	welcome_sound = 'sound/effects/cowboysting.ogg'
	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.1

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Thanks for your attention. All areas are secured against radiation."

	lobby_screens = list('starlight/icons/starlight-lobby.png')
	lobby_tracks = list(
		/music_track/rainfall_over_parallel_ports,
		/music_track/karlskar
	)

/datum/map/orbital/get_map_info()
	return "You're on the <b>[station_name],</b> a mercantile station located somewhere in deep space. \
	No meaningful authorities can claim the planets and resources in this uncharted sector, so their exploitation is entirely up to you - mine, poach and deforest all you want."
