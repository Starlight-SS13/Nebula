/*

interaction system (just a datum what plays sound and outputs text depending on itself and user)

*/

//Unsorted defines

#define B(X) "<b>[X]</b>"             //Bold text macro
#define SPECIES_FRAME "Utility Frame" //It was undefed

//Clothing zippers

/obj/item/clothing/under/var/zipper = 0

/obj/item/clothing/under/examine(mob/user)
	. = ..()
	if(zipper) to_chat(user,FONT_SMALL("Zipper is opened."))

/obj/item/clothing/under/verb/zipper()
	set name = "Toggle Zipper"
	set category = "Object"
	set src in usr
	if(usr.stat || usr.restrained()) return

	zipper = !zipper
	usr.visible_message(SPAN_NOTICE("[usr.name] [zipper ? "opens" : "closes"] zipper on their [name]."))

/obj/item/underwear/Initialize()
	. = ..()
	required_free_body_parts = SLOT_OVER_BODY //so you can remove it without undressing uniform

//HELPERS//

/mob/living/carbon/human/proc/underfluffies_access()
	var/obj/item/clothing/under/U = w_uniform
	return !underfluffies_closed() && (U && U.zipper || !U)

/mob/living/carbon/human/proc/underfluffies_closed()
	return locate(/obj/item/underwear/bottom) in worn_underwear

/mob/living/carbon/human/proc/hands_check()
	var/obj/item/organ/external/rhand = organs_by_name[BP_R_HAND]
	var/obj/item/organ/external/lhand = organs_by_name[BP_L_HAND]
	return ( rhand && rhand.is_usable() ) && ( lhand && lhand.is_usable() )

/mob/living/carbon/human/proc/get_age_pitch()
	return 1.0 + 0.5*(30 - age)/80

//VARS//

/mob/living/carbon/human
	var/last_interact

//FLAGS//

#define INT_VAG BITFLAG(0)
#define INT_PEN BITFLAG(1)
#define INT_MOU BITFLAG(2)
#define INT_ASS BITFLAG(3)
#define INT_HAN BITFLAG(4)
#define INT_CONS BITFLAG(5)
#define INT_CUFF BITFLAG(6)
#define INT_BREA BITFLAG(7)

#define INTERACT_DELAY 2

//DATUM//

/datum/interaction
	var/name = "You should not see this"
	var/id   = "no" //ID for hrefs and global list, seems odd (as you can use interaction names to generate lists etc), maybe remove them later

//Availability flags
	var/user_flags    = null
	var/partner_flags = null

	var/adjacent = 1 //e.g if interaction is distant so..

	var/color         = "#000000" //Color of text
	var/list/sounds   = list()    //Sounds to pick from, when makin' love, u knw
	var/bold_prob     = 0         //Bold text prob
	var/sound_prob    = 100       //Sound prob
	var/sound_special = FALSE     //Sound handling by special proc, seems like sooomething useless right now

//AVAILIBILITY CHECK//

/datum/interaction/proc/check_for(var/mob/living/carbon/human/H,flags)
	var/list/face_covering = H.get_covering_equipped_items(SLOT_FACE)
	if((flags    & INT_BREA) &&    H.gender != FEMALE) return 0
	if((flags    & INT_PEN ) && ( !H.underfluffies_access() || H.gender != MALE ) ) return 0
	if((flags    & INT_VAG ) && ( !H.underfluffies_access() || H.gender != FEMALE ) ) return 0
	if((flags    & INT_ASS ) &&   !H.underfluffies_access() ) return 0
	if((flags    & INT_MOU ) && (  face_covering.len || !(H.species.appearance_flags & HAS_LIPS) )  ) return 0
	if((flags    & INT_HAN ) &&   !H.hands_check()) return 0
	if((flags    & INT_CONS) &&    H.stat) return 0
	if((flags    & INT_CUFF) &&    H.restrained()) return 0
	return 1

/datum/interaction/proc/available_for(var/mob/living/carbon/human/H,var/mob/living/carbon/human/P)
	if(!H || H == P) return 0 //no selfinteracts
	if(adjacent && !(H.Adjacent(P) || H.loc == P.loc)) return 0
	return check_for(H,user_flags) && check_for(P,partner_flags)

//INITIALIZATION//

GLOBAL_LIST_EMPTY(interactions)
/* temporarily
/world/New()
	..()
	for(var/interaction_type in subtypesof(/datum/interaction))
		var/datum/interaction/I = interaction_type
		if(initial(I.id) == "no") continue
		var/datum/interaction/N = new interaction_type
		GLOB.interactions[N.id] = N*/

//INTERFACE//

/mob/living/carbon/human/proc/interact_with(var/mob/living/carbon/human/partner)

	var/mob/living/carbon/human/H = src
	var/mob/living/carbon/human/P = partner

	var/dat = "<hr><b><font size=3>Interaction with [P.name]</font></b><br><hr><br>"
	for(var/id in GLOB.interactions)
		var/datum/interaction/I = GLOB.interactions[id]
		if(I.available_for(H,P)) dat += {"<a href='?src=\ref[P];interaction=[I.id]'>[I.name]</a><br>"}

	var/datum/browser/popup = new(usr, "interactions", "Interactions", 340, 480)
	popup.set_content(dat)
	popup.open()

/mob/living/carbon/human/MouseDrop(mob/M)
	..()
	if(ishuman(M) && src == usr && M != src)
		interact_with(M)

/mob/living/carbon/human/OnTopic(mob/user, href_list)
	. = ..()
	if(!ishuman(user)) return
	var/interaction = href_list["interaction"]
	if(GLOB.interactions[interaction])
		var/datum/interaction/I = GLOB.interactions[interaction]
		I.handle(user,src)

//PROCS//

/datum/interaction/proc/handle(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P) //essentialy, H is initator, P is partner

	if(!available_for(H,P) || H.last_interact + INTERACT_DELAY > world.time) return

	handle_text(H,P)
	handle_sounds(H,P)
	handle_other(H,P)

	H.last_interact = world.time

//General procs, you dont wanna touch this except for handle_other()

/datum/interaction/proc/handle_text(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/message = get_message(H,P)

	if(prob(bold_prob)) H.visible_message("<span style='color: [color]'><B>[message].</B></span>")
	else H.visible_message("<span style='color: [color]'>[message].</span>")

/datum/interaction/proc/handle_sounds(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(prob(sound_prob) && !sound_special && sounds.len) playsound(get_turf(H), safepick(sounds), 70, 1, -1)
	if(sound_special) playsound(get_turf(H), get_sound(H,P), 70, 1, -1)

/datum/interaction/proc/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return

//Most important things below
//You MUST override them

/datum/interaction/proc/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] hugs [B(P)]" //NO DOTS. NO. DOTS. NOOOOO DOTS. PLEASEEEE.

/datum/interaction/proc/get_sound(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return 'starlight/sound/voice/interaction/hug.ogg'