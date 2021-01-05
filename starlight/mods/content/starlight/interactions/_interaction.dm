//Interaction System (just a datum what plays sound and outputs text depending on itself and user)
//and yes, i understand what making it through decl/ would be better, BUT IM LAZY..

//Macro & helpers

#define B(X) "<b>[X]</b>"             //Bold text macro
#define SPECIES_FRAME "Utility Frame" //It was undefed

/mob/living/carbon/human/proc/underfluffies_access()
	var/obj/item/clothing/under/U = w_uniform
	. = !underfluffies_closed() && (U && U.zipper || !U)

/mob/living/carbon/human/proc/underfluffies_closed()
	. = locate(/obj/item/underwear/bottom) in worn_underwear

/mob/living/carbon/human/proc/hands_check()
	var/obj/item/organ/external/rhand = organs_by_name[BP_R_HAND]
	var/obj/item/organ/external/lhand = organs_by_name[BP_L_HAND]
	return ( rhand && rhand.is_usable() ) && ( lhand && lhand.is_usable() )

/mob/living/carbon/human/proc/get_age_pitch()
	. = 1.0 + 0.5*(30 - age)/80

//vars

/mob/living/carbon/human
	var/last_interact

//flags

#define INT_VAG  BITFLAG(0)
#define INT_PEN  BITFLAG(1)
#define INT_MOU  BITFLAG(2)
#define INT_ASS  BITFLAG(3)
#define INT_HAN  BITFLAG(4)
#define INT_CONS BITFLAG(5)
#define INT_CUFF BITFLAG(6)
#define INT_BREA BITFLAG(7)
#define INT_SELF BITFLAG(8)

#define INTERACT_DELAY 2

//entire datum

/datum/interaction
	var/name = "You should not see this"
	var/id   = "no" //ID for hrefs and global list, seems odd (as you can use interaction names to generate lists etc), maybe remove them later

//avail flags see above, theyre self explanatory
	var/user_flags    = null
	var/partner_flags = null

	var/adjacent = 1              //e.g if interaction is distant like wave

	var/color         = "#000000" //Color of text
	var/list/sounds   = list()    //Sounds to pick from, when makin' love, u knw
	var/bold_prob     = 0         //Bold text prob
	var/sound_prob    = 100       //Sound prob

//avalibility check

/datum/interaction/proc/check_for(var/mob/living/carbon/human/H,flags)
	. = 1
	var/list/face_covering = H.get_covering_equipped_items(SLOT_FACE)
	if((flags    & INT_BREA) &&    H.gender != FEMALE)                                                . = 0
	if((flags    & INT_PEN ) && ( !H.underfluffies_access() || H.gender != MALE ) )                   . = 0
	if((flags    & INT_VAG ) && ( !H.underfluffies_access() || H.gender != FEMALE ) )                 . = 0
	if((flags    & INT_ASS ) &&   !H.underfluffies_access() )                                         . = 0
	if((flags    & INT_MOU ) && (  face_covering.len || !(H.species.appearance_flags & HAS_LIPS) )  ) . = 0
	if((flags    & INT_HAN ) &&   !H.hands_check())                                                   . = 0
	if((flags    & INT_CONS) &&    H.stat)                                                            . = 0
	if((flags    & INT_CUFF) &&    H.restrained())                                                    . = 0

/datum/interaction/proc/available_for(var/mob/living/carbon/human/H,var/mob/living/carbon/human/P)
	. = 1
	if(!H || (adjacent && !(H.Adjacent(P) || H.loc == P.loc)) || !(check_for(H,user_flags) && check_for(P,partner_flags)) || (!(user_flags & INT_SELF) && H == P)) . = 0

//init

var/list/interactions = list()
/datum/controller/subsystem/misc_late/Initialize()
	. = ..()
	for(var/interaction_type in subtypesof(/datum/interaction))
		var/datum/interaction/I = interaction_type
		if(initial(I.id) == "no") continue
		var/datum/interaction/N = new interaction_type
		global.interactions[N.id] = N

//interface window

/mob/living/carbon/human/proc/interact_with(var/mob/living/carbon/human/P)
	var/dat = "<hr><b><font size=3>Interaction with [P.name]</font></b><br><hr><br>"
	for(var/id in global.interactions)
		var/datum/interaction/I = global.interactions[id]
		if(I.available_for(src,P)) dat += "<a href='?src=\ref[P];interaction=[I.id]'>[I.name]</a><br>"
	var/datum/browser/popup = new(src, "interactions", "Interactions", 340, 480)
	popup.set_content(dat)
	popup.open()

/mob/living/carbon/human/MouseDrop(var/mob/M) //maybe add a verb later?..
	..()
	if(ishuman(M) && src == usr)
		interact_with(M)

/mob/living/carbon/human/OnTopic(mob/user, href_list)
	. = ..()
	if(!ishuman(user)) return
	var/interaction = href_list["interaction"]
	if(global.interactions[interaction])
		var/datum/interaction/I = global.interactions[interaction]
		I.handle(user,src)

/datum/interaction/proc/handle(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P) //essentialy, H is initator, P is partner
	if(!available_for(H,P) || H.last_interact + INTERACT_DELAY > world.time) return
	handle_text(H,P)
	handle_sounds(H,P)
	handle_other(H,P)
	H.last_interact = world.time

/datum/interaction/proc/handle_text(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/message = get_message(H,P)
	if(prob(bold_prob)) H.visible_message("<span style='color: [color]'><B>[message].</B></span>")
	else H.visible_message("<span style='color: [color]'>[message].</span>")

/datum/interaction/proc/handle_sounds(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(prob(sound_prob) && sounds.len) playsound(get_turf(H), safepick(sounds), 70, 1, -1)

/datum/interaction/proc/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return

//as you can see thing below needs to be overriden..
/datum/interaction/proc/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] hugs [B(P)]"