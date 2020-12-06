/datum/map/jellyfish

	name           = "Jellyfish"
	full_name      = "UCV Jellyfish"


	station_short  = "Jellyfish"
	station_name   = "UCV Jellyfish"

	path           = "jellyfish"

	station_levels = list(1, 2, 3)
	contact_levels = list(1, 2, 3)
	player_levels  = list(1, 2, 3)

	dock_name      = "FTS Capitalist's Rest"
	boss_name      = "FTU Merchant Navy"
	boss_short     = "Merchant Admiral"
	company_name   = "Legit Cargo Ltd."
	company_short  = "LC"

	use_overmap    = 1
	num_exoplanets = 2
	overmap_event_areas = 22

	lobby_screens  = list('maps/jellyfish/media/jellyfish.jpg')
	welcome_sound  = 'maps/jellyfish/media/authcode.ogg'
	lobby_tracks   = list(/music_track/darkspace1)

	emergency_shuttle_leaving_dock   = "ATTENTION. The escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "ATTENTION. Emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "ATTENTION. Emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/lifepods

	starting_money   = 3000
	department_money = 500
	salary_modifier  = 2

	radiation_detected_message       = "ATTENTION. High levels of radiation have been detected in proximity of the %STATION_NAME%."

/* I don't know where else to write this, but

If you are changing this map, please follow these simple rules: (for my own sanity!)

 - Pixel offsets(pixel_x,pixel_y) are only: 24 (ONLY 24, FOR ALL THE THINGS.)
 - DO NOT USE MANUAL AIRLOCK MAPPING, use helpers
 - Do not make/use/create trash instances which/and/or values are default, or have something like {pixel_y = 1, icon_state = "cable"}, PLAEEEEEEEEEEEEEEEEEEEASE.
 - Do not change pixel offsets for air alarms, apcs, fire alarms, etc, objs which generate it from dir

*/