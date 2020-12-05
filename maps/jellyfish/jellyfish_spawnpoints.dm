/datum/map/jelly
	allowed_spawns = list("Main Cryogenic Storage")
	default_spawn  = "Main Cryogenic Storage"

/area/jelly/cryo
	name = "Main Cryogenic Storage"
	area_flags = AREA_FLAG_RAD_SHIELDED

/datum/spawnpoint/jelly
	display_name = "Main Cryogenic Storage"
	msg = "has been removed from main cryogenic storage."

/datum/spawnpoint/jelly/after_join(mob/living/carbon/human/victim)
	if(!istype(victim)) return

	var/area/A = locate(/area/jelly/cryo)
	var/list/spots = list()
	for(var/obj/machinery/cryopod/C in A)
		if(!C.occupant) spots += C

	var/obj/machinery/cryopod/C = pick(spots)

	var/obj/item/storage/backpack/pack = victim.back
	if(istype(pack))
		for(var/atom/movable/thing in victim.get_held_items())
			victim.drop_from_inventory(thing)
			pack.handle_item_insertion(thing)

	C.set_occupant(victim, 1)
	victim.sleeping = 0
	victim.Sleeping(rand(20,30))
	victim.bodytemperature = victim.species?.cold_level_1 //very cold, but a point before damage
	playsound(src, 'sound/machines/defib_success.ogg', 30, 0)

	if(!victim.isSynthetic())
		to_chat(victim, SPAN_NOTICE("You're feeling cold and realize that there are water drops on your face. Cryogenic Liquid just \
		stopped refrigerating the air in the chamber...You see a bright light, blinding you. \
		Yet another shift has begun."))
	else
		to_chat(victim, SPAN_NOTICE("Awakening signal received. Battery is charged. All systems nominal. Ready to work."))