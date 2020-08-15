/obj/effect/landmark/Initialize()
	if(name == "JoinLateCryoPrometeus")
		GLOB.latejoin_cryo_prometeus += loc
		delete_me = 1
	. = ..()