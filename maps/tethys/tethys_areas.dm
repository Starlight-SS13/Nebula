/turf/c_airblock(turf/other)
	if(get_fluid_depth() >= FLUID_OVER_MOB_HEAD)
		return BLOCKED
	. = ..()

/area/space
	name        = "open ocean"
	icon_state  = "ocean"
	icon        = 'maps/tethys/media/areas.dmi'
	base_turf   = /turf/exterior/seafloor

/area/space/has_gravity()
	return TRUE

/area/tethys
	name       = "\improper The Tethys"
	icon_state = "tethys"
	icon       = 'maps/tethys/media/areas.dmi'
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

//Elevator

/obj/turbolift_map_holder/tethys
	depth        = 3
	lift_size_x  = 4
	lift_size_y  = 3
	areas_to_use = list(
		/area/turbolift/tethys_under,
		/area/turbolift/tethys_surface,
		/area/turbolift/tethys_tower
	)

/area/turbolift
	name             = "Main Elevator"
	icon_state       = "shuttle"
	requires_power   = FALSE
	dynamic_lighting = TRUE

/area/turbolift/tethys_tower
	name      = "Tower Access"
	base_turf = /turf/simulated/open

/area/turbolift/tethys_surface
	name      = "Surface Access"
	base_turf = /turf/simulated/open

/area/turbolift/tethys_under
	name      = "Underground Access"
	base_turf = /turf/simulated/floor/plating

//Engineering

/area/tethys/engineering
	name       = "Engineering"
	req_access = list(access_engine)

/area/tethys/engineering/reactor
	name = "Reactor Bay"

/area/tethys/engineering/power
	name = "Power Supply"

/area/tethys/engineering/atmospherics
	name = "Life Support"

/area/tethys/engineering/communications
	name = "Communications"

//Maintenance

/area/tethys/maintenance
	req_access = list(access_maint_tunnels)

/area/tethys/maintenance/shaft
	name = "Maintenance Shaft"

//Routing

/area/tethys/hallway/lower
	name = "Lower Hallway"

/area/tethys/hallway/upper
	name = "Surface Hallway"

/area/tethys/hallway/tower
	name = "Upper Hallway"

/area/tethys/eva
	name       = "Exterior Access"
	req_access = list(access_eva)

//Civilian

/area/tethys/civilian
	name = "Recreation Area"

/area/tethys/civilian/dorm
	name = "Dormitory"

/area/tethys/civilian/hygiene
	name = "Hygiene"

/area/tethys/civilian/lounge
	name = "Lounge"

/area/tethys/civilian/library
	name = "Library"

/area/tethys/civilian/cryo
	name = "Cryogenic Storage"

//Medical

/area/tethys/medical
	name = "Medical Bay"

/area/tethys/medical/chem
	name       = "Chemistry"
	req_access = list(access_chemistry)

//Science

/area/tethys/science
	name       = "Science Lab"
	req_access = list(access_research)

/area/tethys/science/fabrication
	name = "Fabrication Bay"

/area/tethys/science/workshop
	name = "Workshop"

/area/tethys/science/testing
	name = "Secure Testing Site"

//Cargo

/area/tethys/cargo
	name       = "Cargo Storage"
	req_access = list(access_cargo)

/area/tethys/cargo/smelter
	name = "Mining Smelter"

//Sec+com

/area/tethys/bridge
	name       = "Bridge"
	req_access = list(access_bridge)

/area/tethys/security
	name       = "Security"
	req_access = list(access_security)
