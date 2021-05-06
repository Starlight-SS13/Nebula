/area/ship/constellation
	name = "\improper Constellation"
	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg'
	)

/datum/event/prison_break/medical
	areaType = list(/area/ship/constellation/medical)

/datum/event/prison_break/science
	areaType = list(/area/ship/constellation/livestock)

/datum/event/prison_break/station
	areaType = list(/area/ship/constellation/brig)

/*
please do not remove my messages. they just look fancy to sort these areas. i rly dont like previous file. i know that it was sorted by area placement but..
*/

//Crew/Civilian

/area/ship/constellation/crew
	name = "Crew Compartments"
	icon_state = "crew_quarters"

/area/ship/constellation/crew/hallway/port
	name = "Crew Hallway - Port"

/area/ship/constellation/crew/hallway/starboard
	name = "Crew Hallway - Starboard"

/area/ship/constellation/crew/kitchen
	name = "Kitchen"
	icon_state = "kitchen"

/area/ship/constellation/crew/hydro
	name = "Hydroponics"
	icon_state = "green"

/area/ship/constellation/crew/dorms1
	name = "Sleep Capsule"
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/constellation/crew/dorms2
	name = "Crew Cabin"
	icon_state = "purple"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/constellation/crew/saloon
	name = "Saloon"
	icon_state = "conference"

/area/ship/constellation/crew/library
	name = "Library"
	icon_state = "yellow"

/area/ship/constellation/crew/toilets
	name = "Bathrooms"
	icon_state = "toilet"

/area/ship/constellation/crew/wash
	name = "Laundry"
	icon_state = "locker"

//Docks

/area/ship/constellation/dock
	name = "Docking Bay"
	icon_state = "entry_1"

//Escape Pods/Cryo

/area/ship/constellation/escape_port
	name = "Port Escape Pods"
	icon_state = "green"

/area/ship/constellation/escape_star
	name = "Starboard Escape Pods"
	icon_state = "yellow"

//Command

/area/ship/constellation/command
	req_access = list(access_heads)

/area/ship/constellation/command/hallway
	name = "Command Deck"
	icon_state = "centcom"
	req_access = list()

/area/ship/constellation/command/bridge
	name = "Bridge"
	icon_state = "bridge"

/area/ship/constellation/command/bridge_upper
	name = "Upper Bridge"
	icon_state = "blue"

/area/ship/constellation/command/captain
	name = "Captain's Quarters"
	icon_state = "captain"
	req_access = list(access_captain)
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/constellation/command/fmate
	name = "First Mate's Office"
	icon_state = "heads_hop"
	req_access = list(access_hop)

//Medical

/area/ship/constellation/medical
	name = "Medical Bay"
	icon_state = "medbay"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/constellation/medical/chemistry
	name = "Chemistry Bay"
	icon_state = "cave"
	req_access = list(access_medical)

//Science

/area/ship/constellation/science
	name = "Research Bay"
	icon_state = "green"
	req_access = list(access_research)

/area/ship/constellation/science/fabricaton
	name = "Fabrication Bay"
	icon_state = "yellow"

/area/ship/constellation/science/artifact_storage
	name = "Artifact Storage"
	icon_state = "ai_cyborg"

//Cargo

/area/ship/constellation/cargo
	name = "Cargo Hold"
	icon_state = "quartstorage"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/constellation/cargo/lower
	name = "Loading Bay"

//Maint. and unused

/area/ship/constellation/maintenance
	name = "Maintenance Compartments"
	icon_state = "amaint"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE

/area/ship/constellation/maintenance/hallway
	name = "Maintenance Corridors"

/area/ship/constellation/maintenance/lower
	name = "Lower Deck Maintenance Compartments"
	icon_state = "sub_maint_aft"

/area/ship/constellation/hidden
	name = "Unknown"
	icon_state = "auxstorage"

/area/ship/constellation/command/bridge_unused
	name = "Bridge Starboard Storage"
	icon_state = "armory"

//Engineering

/area/ship/constellation/engineering
	name       = "Engineering Bay"
	icon_state = "engineering_supply"
	req_access = list(access_engine)
	secure     = 1

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambieng1.ogg'
	)

/area/ship/constellation/engineering/storage
	name = "Engineering Storage"
	icon_state = "engineering_storage"

/area/ship/constellation/engineering/techstorage
	name = "Parts Storage"
	icon_state = "engineering_supply"

/area/ship/constellation/engineering/eva
	name = "EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/ship/constellation/engineering/atmos
	name = "Atmospherics Comparment"
	icon_state = "atmos"

/area/ship/constellation/engineering/power
	name = "Power Compartment"
	icon_state = "engine_smes"

/area/ship/constellation/engineering/engine
	name = "Main Engine Bay"
	icon_state = "engine"

/area/ship/constellation/engineering/solars
	name = "Solar Array Access"
	icon_state = "SolarcontrolA"

//Misc.

/area/ship/constellation/brig
	name = "Brig"
	icon_state = "brig"
	req_access = list(access_brig)
	secure     = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_SECURITY

/area/ship/constellation/storage
	name = "Secure Storage"
	icon_state = "engine"
	req_access = list(access_engine_equip)

/area/ship/constellation/comms
	name = "Communications Relay"
	icon_state = "tcomsatcham"
	req_access = list(access_engine)

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/signal.ogg',
		'sound/ambience/sonar.ogg'
	)

//Underside.

/area/ship/constellation/aft_port_underside_maint
	name = "Underside - Aft Port Maintenance"
	icon_state = "medbay"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE

/area/ship/constellation/aft_starboard_underside_maint
	name = "Underside - Aft Starboard Maintenance"
	icon_state = "toilet"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE

/area/ship/constellation/loading_bay
	name = "Underside - Loading Bay"
	icon_state = "entry_1"

/area/ship/constellation/fore_port_underside_maint
	name = "Underside - Fore Port Maintenance"
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE

/area/ship/constellation/livestock
	name = "Underside - Livestock Handling"
	icon_state = "red"
	req_access = list(access_xenobiology)

/area/ship/constellation/fore_starboard_underside_maint
	name = "Underside - Fore Starboard Maintenance"
	icon_state = "locker"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE

/area/ship/constellation/bar
	name = "Underside - Bar"
	icon_state = "yellow"

/area/ship/constellation/undercomms
	name = "Underside - Communications Relay"
	icon_state = "blue"

//Elevator

/area/turbolift/constellation
	name = "Cargo Elevator"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	sound_env = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	arrival_sound = null
	lift_announce_str = null

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg'
	)

/area/turbolift/constellation/alert_on_fall(var/mob/living/carbon/human/H)
	if(H.client && SSpersistence.elevator_fall_shifts > 0)
		SSwebhooks.send(WEBHOOK_ELEVATOR_FALL, list("text" = "We managed to make it [SSpersistence.elevator_fall_shifts] shift\s without someone falling down an elevator shaft."))
		SSpersistence.elevator_fall_shifts = -1

/area/turbolift/constellation/enclave
	name = "Disused Sublevel"
	base_turf = /turf/simulated/floor

/area/turbolift/constellation/cargo
	name = "Lower Cargo Bay"
	base_turf = /turf/simulated/open

/area/turbolift/constellation/upper
	name = "Upper Cargo Bay"
	base_turf = /turf/simulated/open

/area/turbolift/constellation/roof
	name = "Solar Array Access"
	base_turf = /turf/simulated/open
