//moody vision for robots

/datum/species/utility_frame/handle_post_spawn(var/mob/living/carbon/human/H)
	. = ..()
	H.overlay_fullscreen("species_noise",    /obj/screen/fullscreen/noise,    null)
	H.overlay_fullscreen("species_scanline", /obj/screen/fullscreen/scanline, null)