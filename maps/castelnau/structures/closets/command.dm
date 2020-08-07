/*
 * Castelnau Command
 */
/obj/structure/closet/secure_closet/captains/castelnau
	req_access = list(access_castelnau_captain)

/obj/structure/closet/secure_closet/captains/castelnau/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/gun/energy/gun,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/radio/headset/heads/castelnau_captain,
		/obj/item/radio/headset/heads/castelnau_captain/alt,
		/obj/item/storage/belt/general,
		/obj/item/melee/telebaton,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/clothing/head/caphat/formal,
		/obj/item/clothing/gloves/captain,
		/obj/item/storage/box/PDAs,
		/obj/item/storage/box/ids,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
	)

/obj/structure/closet/secure_closet/hop/castelnau
	name = "first officer's locker"
	req_access = list(access_castelnau_comoffice)

/obj/structure/closet/secure_closet/hop/castelnau/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/radio/headset/heads/hop,
		/obj/item/radio/headset/heads/hop/alt,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/gun/energy/gun,
		/obj/item/melee/telebaton,
		/obj/item/material/clipboard,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/storage/box/PDAs,
		/obj/item/storage/box/ids,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
	)

/obj/structure/closet/secure_closet/adjutant
	name = "second officer's locker"
	req_access = list(access_castelnau_bridge)

/obj/structure/closet/secure_closet/adjutant/WillContain()
	return list(
		/obj/item/radio,
		/obj/item/pen,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/radio/headset/adjutant,
		/obj/item/radio/headset/adjutant/alt,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/flashlight, /obj/item/flashlight/flare, /obj/item/flashlight/flare/glowstick/random))
	)
