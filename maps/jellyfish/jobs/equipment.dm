/obj/machinery/suit_cycler
	initial_access = list()

/obj/machinery/suit_cycler/jelly
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	suit   = /obj/item/clothing/suit/space/void/engineering/salvage
	boots  = /obj/item/clothing/shoes/magboots

//IDs, badges

/obj/item/card/id
	icon = 'maps/jellyfish/media/id_new.dmi'
	slot_flags = null

/obj/item/card/id/Initialize()
	. = ..()
	name = "access card"
	desc = "Cheap plastic card with magnetic stripe."

/obj/item/card/id/dat()
	. = ""
	if(front) . +="<img src=front.png height=120 width=120 border=6><BR><HR>"
	. += "[registered_name] - [assignment]"

//Badge (card holder)

/obj/item/badge
	name = "badge"
	desc = "A plastic pocket used to store cards."
	icon = 'maps/jellyfish/media/badge.dmi'
	slot_flags = SLOT_ID
	w_class    = ITEM_SIZE_SMALL
	var/obj/item/card/id/stored

/obj/item/badge/on_update_icon()
	cut_overlays()
	if(stored)
		underlays += image(icon = stored.icon, icon_state = ICON_STATE_INV)

/obj/item/badge/attackby(var/obj/item/I,var/mob/user)
	if(stored) return
	if(istype(I,/obj/item/card/id))
		user.drop_from_inventory(I)
		stored = I
		I.forceMove(src)
		update_icon()

/obj/item/badge/attack_self(var/mob/user)
	if(!ishuman(user) || !stored) return
	if(user.a_intent != I_HURT)
		stored.attack_self(user)
		return
	user.put_in_hands(stored)
	stored = null
	update_icon()

/obj/item/badge/GetAccess()
	return stored ? stored.access : null

/obj/item/badge/GetIdCard()
	return stored

/obj/item/badge/examine(var/mob/user, distance)
	. = ..()
	if(stored)
		to_chat(user,"It has a [stored.name] inside it.")
		stored.examine(user, distance)

/decl/hierarchy/outfit/equip_id(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	. = ..()
	var/obj/item/card/id/W = .
	if(!istype(W)) return
	H.drop_from_inventory(W)
	var/obj/item/badge/B = new()
	W.forceMove(B)
	B.stored = W
	B.update_icon()
	W.update_icon()
	H.equip_to_slot_or_store_or_drop(B, id_slot)
	var/datum/job/J = SSjobs.get_by_title(rank)
	W.access = J.access.Copy()

//Pagers (simple network-based communication thing)

/obj/item/pager
	name = "pager"
	desc = "A tiny device often used to communicate in space. Offloads all processing into network - thus, it is very cheap."
	icon = 'maps/jellyfish/media/pager.dmi'
	w_class = ITEM_SIZE_SMALL
	var/broadcast = FALSE
	var/sounded = TRUE

/obj/item/pager/attack_self()
	broadcast = !broadcast
	update_icon()

/obj/item/pager/on_update_icon()
	cut_overlays()
	if(broadcast)
		addglow("[icon_state]-toggle",COLOR_CYAN)

/obj/item/pager/proc/addglow(var/overlay_icon,var/overlay_color)
	var/image/L = image(icon,overlay_icon,layer = EYE_GLOW_LAYER)
	var/image/O = image(icon,overlay_icon)
	L.plane = EFFECTS_ABOVE_LIGHTING_PLANE
	L.color = overlay_color
	O.color = overlay_color
	add_overlay(L)
	add_overlay(O)

/obj/item/pager/Initialize()
	. = ..()
	set_extension(src, /datum/extension/network_device, null, null, NETWORK_CONNECTION_WIRELESS)

/mob/living/carbon/human/say(var/message, var/decl/language/speaking = null, whispering)
	. = ..()
	var/obj/item/pager/P = locate() in contents
	if(!P) return
	P.hear_talk(src,message)

/obj/item/pager/hear_talk(mob/M, msg, var/say_verb = "says", var/decl/language/speaking = null)
	if(!broadcast) return
	transmit(msg)

/obj/item/pager/proc/transmit(message)
	var/datum/extension/network_device/D = get_extension(src, /datum/extension/network_device)
	if(!D) return
	broadcast_flick()
	var/datum/computer_network/net = D.get_network()
	var/list/pagers = net.get_devices_by_type(type, null)
	for(var/obj/item/pager/P in pagers)
		P.receive_flick()
		var/mob/living/carbon/human/H = P.loc
		if(!istype(H)) continue
		to_chat(H,"[html_icon(src)] <B>[D.network_tag]:</B> [uppertext(message)]")

/obj/item/pager/proc/receive_flick()
	addglow("[icon_state]-receive",COLOR_GREEN)
	if(sounded) playsound(src, 'sound/machines/twobeep.ogg', 20, 0)
	addtimer(CALLBACK(src, .proc/update_icon), 5)

/obj/item/pager/proc/broadcast_flick()
	addglow("[icon_state]-broadcast",COLOR_YELLOW)
	addtimer(CALLBACK(src, .proc/update_icon), 5)

/obj/item/pager/verb/reconnect()
	set name     = "Select Pager Network"
	set category = "Object"
	var/datum/extension/network_device/D = get_extension(src, /datum/extension/network_device)
	if(!D) return
	D.ui_interact(usr)

/obj/item/pager/verb/sound_toggle()
	set name     = "Toggle Beeper"
	set category = "Object"
	sounded = !sounded
	to_chat(usr,SPAN_NOTICE("You [sounded ? "turn on" : "turn off"] \the [name] beeper."))