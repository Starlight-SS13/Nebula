/*
 * Castenlau Supply
 */

/obj/structure/closet/secure_closet/quartermaster/castelnau
	name = "deck chief's locker"
	req_access = list(access_castelnau_qm)

/obj/structure/closet/secure_closet/quartermaster/castelnau/WillContain()
	return list(
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/storage/belt/utility/full,
		/obj/item/hand_labeler,
		/obj/item/clipboard,
		/obj/item/folder/yellow,
		/obj/item/stack/package_wrap/twenty_five,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/binoculars,
		/obj/item/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack = 75, /obj/item/storage/backpack/satchel/grey = 25)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/messenger = 75, /obj/item/storage/backpack/dufflebag = 25))
	)

/obj/structure/closet/secure_closet/miner/castelnau
	req_access = list(access_castelnau_supply)

/obj/structure/closet/secure_closet/miner/castelnau/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(
				/obj/item/storage/backpack/industrial,
				/obj/item/storage/backpack/satchel/eng
			)),
		/obj/item/radio/headset/headset_mining,
		/obj/item/clothing/under/rank/miner,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/shoes/color/black,
		/obj/item/scanner/gas,
		/obj/item/storage/ore,
		/obj/item/flashlight/lantern,
		/obj/item/shovel,
		/obj/item/pickaxe,
		/obj/item/clothing/glasses/meson
	)