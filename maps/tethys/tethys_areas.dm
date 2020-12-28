//Areas + ocean things

/datum/map/tethys
	base_turf_by_z = list("1" = /turf/exterior/seafloor,
						  "2" = /turf/simulated/open,
						  "3" = /turf/simulated/open)

/turf/simulated/wall/natural/ocean
	name       = "ocean rock"
	floor_type = /turf/exterior/seafloor
	strata     = /decl/strata/permafrost

/turf/exterior/seafloor/return_air()
	return GLOB.using_map.get_exterior_atmosphere()

/area/space/ocean
	name        = "open ocean"
	icon_state  = "ocean"
	icon        = 'maps/tethys/media/areas.dmi'
	base_turf   = /turf/exterior/seafloor

/area/space/ocean/has_gravity()
	return 1

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
	requires_power   = 0
	dynamic_lighting = 1

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

/area/tethys/engine
	name       = "Engineering"
	req_access = list(access_engine)

/area/tethys/engine/reactor
	name = "Reactor Bay"

/area/tethys/engine/power
	name = "Power Supply"

/area/tethys/engine/atmos
	name = "Life Support"

/area/tethys/engine/comms
	name = "Communications"

//Maintenance

/area/tethys/maint
	req_access = list(access_maint_tunnels)

/area/tethys/maint/shaft
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

/area/tethys/science/robot
	name = "Robot Storage"

//Cargo

/area/tethys/cargo
	name       = "Cargo Storage"
	req_access = list(access_cargo)

//Sec+com

/area/tethys/bridge
	name       = "Bridge"
	req_access = list(access_bridge)

/area/tethys/sec
	name       = "Security"
	req_access = list(access_security)