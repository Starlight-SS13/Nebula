/area/station/orbital
	name = "Generic Station"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	area_flags = AREA_FLAG_RAD_SHIELDED

//Misc. areas

/area/station/orbital/maint
	name = "Maintenance Hallway"
	icon_state = "yellow"
	turf_initializer = /decl/turf_initializer/maintenance
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')

/area/station/orbital/maint/unused/Initialize()
	..()
	name = "Unused Comparment #[rand(1,4000)]"

/area/station/orbital/maint/unused/lower1

/area/station/orbital/maint/unused/lower2

/area/station/orbital/lower_hangar
	name = "Hangar"

//Crew areas

/area/station/orbital/cryo
	name = "Cryogenic Storage"

//Engineering

/area/station/orbital/engineering
	name = "Engineering Comparment"
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	req_access = list(access_engine)

/area/station/orbital/engineering/monitoring
	name = "Engineering Monitoring"

/area/station/orbital/engineering/atmos
	name = "Atmospherics Comparment"
	icon_state = "atmos"
	req_access = list(access_atmospherics)

/area/station/orbital/engineering/upper_cozy
	name = "Engineering Break Room"

//Comms

/area/station/orbital/comms
	name = "Networking"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/area/station/orbital/comms/upper
	name = "Communications Relay - Upper floor"

/area/station/orbital/comms/lower
	name = "Communications Relay - Lower floor"

//Medical

/area/station/orbital/medical
	name = "Sickbay"
	req_access = list(access_medical)

/area/station/orbital/medical/stasis
	name = "Stasis Bay"

/area/station/orbital/medical/sickbeds
	name = "Sickbeds
	req_access = list()