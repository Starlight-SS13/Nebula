//WARNING: this file contains mild CRINGE. Proceed with caution. You've been warned.

  ///////////
 //HARMLESS//
 ///////////

/datum/interaction/headpat
	name = "Pat their head"
	id = "headpat"
	user_flags = INT_HAN | INT_CONS | INT_CUFF
	sounds = list('starlight/sound/voice/interaction/hug.ogg')

/datum/interaction/headpat/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] headpats [B(P)]"

/datum/interaction/slap
	name = "Slap their ass"
	id = "slap"
	user_flags = INT_HAN | INT_CONS | INT_CUFF
	sounds = list('starlight/sound/voice/interaction/slap.ogg')
	color = "red"

/datum/interaction/slap/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] slaps [B(P)]'s ass"

/datum/interaction/wave
	name = "Wave"
	id = "wave"
	user_flags = INT_HAN | INT_CONS | INT_CUFF
	adjacent = 0

/datum/interaction/wave/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] waves to [B(P)]"

  ///////////
 //NSFW/SEX//
 ///////////

/datum/interaction/sex
	user_flags = INT_HAN | INT_CONS | INT_CUFF | INT_PEN //Hands, not dead, not restrained, male
	color = "purple"
	sounds = list('starlight/sound/voice/interaction/bang1.ogg',
					'starlight/sound/voice/interaction/bang2.ogg',
					'starlight/sound/voice/interaction/bang3.ogg')
	bold_prob = 5

	var/hole

//Misc.

/mob/living/carbon/human
	var/lust = 0
	var/max_lust = 180
	var/penis_size = 10

	var/last_moan //Number of sound (moan)

/mob/living/carbon/human/Life()
	. = ..()
	if(lust > 1) lust -= 1

/mob/living/carbon/human/Initialize()
	. = ..()
	penis_size = rand(10,20)

/mob/living/carbon/human/examine(mob/user, distance)
	. = ..()
	if(underfluffies_access() && gender == MALE)
		to_chat(user,SPAN_BOLD("Penis size: [penis_size] cm"))

/datum/species
	genders = list(MALE, FEMALE)

/datum/species/utility_frame
	genders = list(MALE, FEMALE)

//Ewwww

/obj/effect/decal/cleanable/cum
	name = "cum"
	desc = "It's pie cream from a cream pie. Or not..."
	icon = 'starlight/icons/effects.dmi'
	random_icon_states = list("cum1", "cum3", "cum4", "cum5", "cum6", "cum7", "cum8", "cum9", "cum10", "cum11", "cum12")

/datum/interaction/sex/proc/cum(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P,var/flag)
	if(H.stat) return
	var/message = pick("twists in orgasm",
				"orgasms",
				"shivers in arousal",
				"shivers, their eyes closed")

	var/turf/T = get_turf(H)
	var/PN = B(P)

	if(H.gender == MALE)

		H.species.name == SPECIES_FRAME ? new/obj/effect/decal/cleanable/blood/oil(T) : new/obj/effect/decal/cleanable/cum(T)

		if(flag == INT_MOU)
			message = pick("cums in [PN]'s mouth",
						"cums onto [PN]'s face",
						"covers [PN]'s face with cum")

		if(flag == INT_VAG)
			message = pick("cums into [PN]",
						"pulls out from [PN], then cums onto floor",
						"penetrates [PN] at last, shivering")

		if(flag == INT_ASS)
			message = pick("cums in [PN]'ass",
						"pulls out from [PN]'asshole, splattering their cum on them")

		if(!flag)
			message = "cums onto floor"

	H.lust = 0
	H.adjust_drugged(5, 5)
	H.visible_message("<span style='color: [color]'>[B("[H] [message].")]</span>")
	if(H.species.name != SPECIES_FRAME) playsound(get_turf(H), "starlight/sound/voice/interaction/final_[H.gender == MALE ? "m" : "f"][H.gender == MALE ? rand(1,5) : rand(1,3)].ogg", 70 + (H.gender == FEMALE ? 20 : 0), 1, frequency = H.get_age_pitch())
	else playsound(get_turf(H),'sound/effects/turret/open.wav',70,1,-1)

/datum/interaction/sex/proc/moan(var/mob/living/carbon/human/H)
	if(H.stat) return
	var/message

	if(H.species.name == SPECIES_HUMAN  && prob(H.lust / H.max_lust * (H.gender == MALE ? 5 : 60)))
		message = pick("moans", "moans in arousal", "closes their eyes", "bites their lips")

		var/gend_sound = H.gender == FEMALE ? "f" : "m"
		var/moan_sound = rand(1, 7)
		if(moan_sound == H.last_moan && moan_sound != 1) moan_sound--
		if(!istype(H.loc, /obj/structure/closet)) playsound(get_turf(H), "starlight/sound/voice/interaction/moan_[gend_sound][moan_sound].ogg", 70, 1, frequency = H.get_age_pitch())
		else if (gend_sound == "f") playsound(get_turf(H), "starlight/sound/voice/interaction/under_moan_f[rand(1, 4)].ogg", 70, 1, frequency = H.get_age_pitch())
		H.last_moan = moan_sound

	if(H.species.name == SPECIES_FRAME  && prob(H.lust / H.max_lust * 35))
		message = pick("vibrates")
		playsound(get_turf(H),"sound/effects/turret/move[rand(1,2)].wav",70,1,-1)

	if(message) H.visible_message("[B(H)] [message].")

/datum/interaction/sex/proc/animate_with(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/pixel_x_diff = 0
	var/pixel_y_diff = 0

	var/direction = get_dir(H, P)
	if(direction & NORTH) pixel_y_diff = 8
	else if(direction & SOUTH) pixel_y_diff = -8
	if(direction & EAST) pixel_x_diff = 8
	else if(direction & WEST) pixel_x_diff = -8

	if(pixel_x_diff == 0 && pixel_y_diff == 0)
		pixel_x_diff = rand(-3,3)
		pixel_y_diff = rand(-3,3)

	animate(H, pixel_x = H.pixel_x + pixel_x_diff, pixel_y = H.pixel_y + pixel_y_diff,   time = 2)
	animate(H, pixel_x = initial(H.pixel_x),       pixel_y = initial(H.pixel_y),         time = 2)

/datum/interaction/sex/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(H.lust >= H.max_lust) cum(H,P,hole)
	if(P.lust >= P.max_lust) cum(P,H,null)
	H.lust += H.penis_size * rand(0.4,0.9)
	P.lust += H.penis_size * rand(0.4,0.9)
	moan(H)
	moan(P)
	animate_with(H,P)
	if(istype(P.loc, /obj/structure/closet)) playsound(get_turf(P), 'sound/effects/clang.ogg', 50, 0, 0)

/obj/structure/closet/Initialize()
	. = ..()
	storage_capacity *= 3

//TYPES//

/datum/interaction/sex/vaginal
	name = "Fuck their pussy"
	id = "vaginal"
	partner_flags = INT_VAG
	hole = INT_VAG
	sounds = list("starlight/sound/voice/interaction/bang4.ogg",
					"starlight/sound/voice/interaction/bang5.ogg",
					"starlight/sound/voice/interaction/bang6.ogg")

/datum/interaction/sex/vaginal/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/PN = B(P)

	var/message = pick("fucks [PN]",
					"roughly fucks [PN]",
					"makes some love with [PN]",
					"penetrates [PN]",
					"moves inside [PN]'s pussy")

	return "[B(H)] [message]"

/datum/interaction/sex/anal
	name = "Fuck their anus"
	id = "anal"
	partner_flags = INT_ASS
	hole = INT_ASS

/datum/interaction/sex/anal/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/PN = B(P)

	var/message = pick("fucks [PN] in ass",
					"penetrates [PN]'s asshole",
					"moves inside [PN]'s anus")

	return "[B(H)] [message]"

/mob/living/carbon/human
	var/muzzled_until = 0

/mob/living/carbon/human/is_muzzled()
	return ..() || muzzled_until > world.time

/datum/interaction/sex/oral
	name = "Fuck their mouth"
	id = "oral"
	partner_flags = INT_MOU
	hole = INT_MOU
	sounds = list("starlight/sound/voice/interaction/oral1.ogg","starlight/sound/voice/interaction/oral2.ogg")

/datum/interaction/sex/oral/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/PN = B(P)

	var/message = pick("forces their cock inside [PN] throat",
					"shoves their cock deep inside [PN] mouth",
					"roughly fucks [PN] in mouth")

	return "[B(H)] [message]"

/datum/interaction/sex/oral/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(H.lust >= H.max_lust) cum(H,P,hole)
	if(P.lust >= P.max_lust) cum(P,H,null)
	H.lust += H.penis_size * rand(0.4,0.9)
	moan(H)
	animate_with(H,P)
	P.muzzled_until = world.time + 100

/datum/interaction/sex/oral/blowjob
	name = "Suck them off"
	id = "blowjob"
	user_flags = INT_HAN | INT_CONS | INT_CUFF | INT_MOU //Hands, not dead, not restrained, mouth
	partner_flags = INT_PEN
	sounds = list('starlight/sound/voice/interaction/bj1.ogg',
				'starlight/sound/voice/interaction/bj2.ogg',
				'starlight/sound/voice/interaction/bj3.ogg',
				'starlight/sound/voice/interaction/bj4.ogg',
				'starlight/sound/voice/interaction/bj5.ogg',
				'starlight/sound/voice/interaction/bj6.ogg',
				'starlight/sound/voice/interaction/bj7.ogg',
				'starlight/sound/voice/interaction/bj8.ogg',
				'starlight/sound/voice/interaction/bj9.ogg',
				'starlight/sound/voice/interaction/bj10.ogg',
				'starlight/sound/voice/interaction/bj11.ogg')

/datum/interaction/sex/oral/blowjob/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/PN = B(P)

	var/message = pick("sucks [PN]'s cock",
				"sucks [PN] off")

	return "[B(H)] [message]"

/datum/interaction/sex/oral/blowjob/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(P.lust >= P.max_lust) cum(P,H,hole)
	if(H.lust >= H.max_lust) cum(H,P,null)
	P.lust += P.penis_size * rand(0.4,0.9)
	moan(P)
	animate_with(P,H)
	H.muzzled_until = world.time + 50

#undef B(X)