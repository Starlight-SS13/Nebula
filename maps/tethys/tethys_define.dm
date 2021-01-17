/datum/map/tethys
	path = "tethys"

	name           = "Tethys"
	full_name      = "Tethys Underwater Complex"
	station_name   = "Tethys Underwater Complex"
	station_short  = "Tethys"

	dock_name      = "Ro'Klarr"
	boss_name      = "Republic Council"
	boss_short     = "Executive Admiral"
	company_name   = "Republic Goverment"
	company_short  = "RG"

	lobby_screens = list('maps/tethys/media/tethys.png')
	welcome_sound = 'maps/tethys/media/welcome.ogg'

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels  = list(1,2,3)
	admin_levels   = list(4)

	base_turf_by_z = list(
		"1" = /turf/exterior/seafloor,
		"2" = /turf/simulated/open,
		"3" = /turf/simulated/open
	)

	use_overmap         = TRUE
	overmap_event_areas = 6
	num_exoplanets      = 2

	exterior_atmos_temp = 110 // -160 degrees celcius (surface temperature of Europa)
	exterior_atmos_composition = list(
		/decl/material/gas/oxygen = O2STANDARD * 100,
		/decl/material/gas/nitrogen = N2STANDARD * 100
	)

	emergency_shuttle_leaving_dock   = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type             = /datum/evacuation_controller/lifepods

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Ensure that all areas all shielded properly. EVA cut recommended."

	radiation_detected_sound = 'maps/tethys/media/threat.ogg'
	space_time_anomaly_sound = 'maps/tethys/media/subspace.ogg'
	unidentified_lifesigns_sound = 'maps/tethys/media/threat.ogg'
	command_report_sound = 'maps/tethys/media/attention.ogg'
	grid_check_sound = 'maps/tethys/media/warning.ogg'
	grid_restored_sound = 'maps/tethys/media/warning.ogg'
	meteor_detected_sound = 'maps/tethys/media/threat.ogg'

	starting_money   = 120000
	department_money = 9000
	salary_modifier  = 3

	allowed_spawns = list("Cryogenic Storage")
	default_spawn  = "Cryogenic Storage"
