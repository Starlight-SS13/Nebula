/area/jelly
	name       = "Jellyfish Area Placeholder"
	icon_state = "yellow"

//Hallways

/area/jelly/hall
	name = "Aft Hallway"

/area/jelly/hall/fore
	name = "Fore Hallway"

/area/jelly/hall/port
	name = "Port Hallway"

/area/jelly/hall/star
	name = "Starboard Hallway"

//Maintenance

/decl/turf_initializer/maintenance/heavy/jelly
	vermin_probability = 0

/area/jelly/maint
	name = "Maintenance"
	turf_initializer = /decl/turf_initializer/maintenance/heavy/jelly

/area/jelly/maint/fore_port
	name       = "Fore Port Maintenance"
	icon_state = "fpmaint"

/area/jelly/maint/port
	name       = "Port Maintenance"
	icon_state = "pmaint"

/area/jelly/maint/aft_port
	name       = "Aft Port Maintenance"
	icon_state = "apmaint"

/area/jelly/maint/star
	name       = "Starboard Maintenance"
	icon_state = "smaint"

/area/jelly/maint/aft_star
	name       = "Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/jelly/maint/upper
	name = "Upper Level Access"

//Civilian

/area/jelly/civilian
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/jelly/civilian/civ1
	name = "Crew Compartment #1"
	icon_state = "crew_quarters"

/area/jelly/civilian/civ2
	name       = "Crew Compartment #2"
	icon_state = "crew_quarters"

/area/jelly/civilian/hygiene
	name       = "Sanitation"
	icon_state = "restrooms"

/area/jelly/civilian/mess
	name       = "Mess Hall"
	icon_state = "cafeteria"

/area/jelly/civilian/galley
	name       = "Galley"
	icon_state = "kitchen"

//Command

/area/jelly/bridge
	name       = "Bridge"
	req_access = list(access_bridge)
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "bridge"

//Cargo and etc

/area/jelly/cargo/upper
	name       = "Upper Cargo"
	icon_state = "quart"

/area/jelly/cargo/lower
	name       = "Lower Cargo"
	icon_state = "mining"

/area/jelly/port_storage
	name = "Port Storage"

/area/jelly/star_storage
	name = "Starboard Storage"

//Medical

/area/jelly/medical
	name       = "Medical Bay"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "medbay"

//Engineering

/area/jelly/engine
	name       = "Reactor Bay"
	req_access = list(access_engine)
	icon_state = "engine"

/area/jelly/engine/aux_port
	name       = "Port Aux Engines"

/area/jelly/engine/aux_star
	name       = "Starboard Aux Engines"

/area/jelly/engine/atmos
	name       = "Life Support"
	icon_state = "atmos"

/area/jelly/engine/ion_port
	name       = "Port Ion Engines"
	icon_state = "thruster"

/area/jelly/engine/ion_star
	name       = "Starboard Ion Engines"
	icon_state = "thruster"

/area/jelly/engine/ion_aft
	name       = "Aft Ion Engines"
	icon_state = "thruster"

//Cargo Elevator

/obj/turbolift_map_holder/jelly
	depth       = 2
	lift_size_x = 4
	lift_size_y = 2

	door_type     = null
	wall_type     = null
	firedoor_type = null
	light_type    = null

	floor_type  = /turf/simulated/floor/tiled/dark
	button_type = /obj/structure/lift/button/standalone
	panel_type  = /obj/structure/lift/panel/standalone

	areas_to_use = list(/area/turbolift/jelly_lower, /area/turbolift/jelly_upper)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound   = 'sound/effects/lift_heavy_stop.ogg'

/area/turbolift
	name       = "Main Elevator"
	icon_state = "shuttle"
	requires_power   = 0
	dynamic_lighting = 1
	sound_env  = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	arrival_sound     = null
	lift_announce_str = null

/area/turbolift/jelly_lower
	name = "Lower Level"
	base_turf = /turf/simulated/floor

/area/turbolift/jelly_upper
	name = "Upper Level"
	base_turf = /turf/simulated/open