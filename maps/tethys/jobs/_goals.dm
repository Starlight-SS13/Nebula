/datum/department/command
	goals = list(/datum/goal/department/paperwork/tethys)

var/list/tethys_paperwork_spawn_turfs = list()
var/list/tethys_paperwork_end_areas = list()

/obj/effect/landmark/paperwork_spawn_tethys
	name = "Tethys Paperwork Goal Spawn Point"

/obj/effect/landmark/paperwork_spawn_tethys/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		global.tethys_paperwork_spawn_turfs |= T
	return INITIALIZE_HINT_QDEL

/obj/effect/landmark/paperwork_finish_tethys
	name = "Tethys Paperwork Goal Finish Point"

/obj/effect/landmark/paperwork_finish_tethys/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		var/area/A = get_area(T)
		if(istype(A))
			global.tethys_paperwork_end_areas |= A
	return INITIALIZE_HINT_QDEL

/datum/goal/department/paperwork/tethys
	paperwork_types =    list(/obj/item/paperwork/tethys)
	signatory_job_list = list(/datum/job/director, /datum/job/manager)

/datum/goal/department/paperwork/tethys/get_spawn_turfs()
	return global.tethys_paperwork_spawn_turfs

/datum/goal/department/paperwork/tethys/get_end_areas()
	return global.tethys_paperwork_end_areas

/obj/item/paperwork/tethys
	name = "\improper Tethys payroll paperwork"
	desc = "A complex list of salaries, hours and tax withheld for Tethys workers this month."
