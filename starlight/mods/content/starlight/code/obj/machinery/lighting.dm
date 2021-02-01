/obj/machinery/light
	var/sound_id
	var/datum/sound_token/sound_token

/obj/item/light
	var/enviroment_sound = 'starlight/mods/content/starlight/sound/obj/machinery/neon_hum.ogg'
	var/enviroment_sound_range = 3
	var/enviroment_sound_volume = 30

/obj/machinery/light/proc/update_enviroment_sound()
	if(!sound_id)
		sound_id = "[sequential_id("[type]_z[z]")]"
	if(lightbulb?.enviroment_sound && powered() && !lightbulb.status)
		sound_token = GLOB.sound_player.PlayLoopingSound(src, sound_id, lightbulb.enviroment_sound, volume = lightbulb.enviroment_sound_volume, range = lightbulb.enviroment_sound_range, falloff = 3, prefer_mute = TRUE)
	else
		QDEL_NULL(sound_token)

#define UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(lproc) ##lproc{. = ..(); update_enviroment_sound();}
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/Initialize(...))
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/seton(...))
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/broken())
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/fix())
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/insert_bulb(...))
UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER(/obj/machinery/light/remove_bulb())
#undef UPDATE_ENVIROMENT_SOUND_MACRO_INHERITER
