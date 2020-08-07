/*
 * Castenlau Science
 */

/obj/structure/closet/secure_closet/scientist/senior_scientist_castelnau
	name = "senior scientist's locker"
	req_access = list(access_castelnau_prometeus_senior)

/obj/structure/closet/secure_closet/scientist/senior_scientist_castelnau/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/scientist,
		/obj/item/clothing/head/bio_hood/scientist,
		/obj/item/clothing/under/rank/research_director,
		/obj/item/clothing/under/rank/research_director/rdalt,
		/obj/item/clothing/under/rank/research_director/dress_rd,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/color/white,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/tank/emergency/oxygen/engi,
		/obj/item/clothing/mask/gas,
		/obj/item/megaphone,
		/obj/item/storage/belt/general,
		/obj/item/folder,
		/obj/item/taperecorder,
		/obj/item/tape/random = 3,
		/obj/item/camera,
		/obj/item/taperoll/research,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/storage/box/secret_project_disks/science,
		/obj/prefab/hand_teleporter,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/toxins, /obj/item/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/xenoarchaeologist/castenlau
	req_access = list(access_castelnau_prometeus)

/obj/structure/closet/secure_closet/xenoarchaeologist/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/color/white,
		/obj/item/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/random/clipboard,
		/obj/item/folder,
		/obj/item/taperecorder,
		/obj/item/tape/random = 3,
		/obj/item/camera,
		/obj/item/scanner/gas,
		/obj/item/storage/belt/general,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/glasses/meson,
		/obj/item/radio,
		/obj/item/flashlight/lantern,
		/obj/item/storage/belt/archaeology,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/toxins, /obj/item/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag, 50)
	)

/obj/structure/closet/secure_closet/scientist/castenlau
	req_access = list(access_castelnau_prometeus)

/obj/structure/closet/secure_closet/scientist/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/color/white,
		/obj/item/radio/headset/headset_sci,
		/obj/item/clothing/mask/gas,
		/obj/item/tank/emergency/oxygen/engi,
		/obj/random/clipboard,
		/obj/item/folder,
		/obj/item/taperecorder,
		/obj/item/storage/belt/general,
		/obj/item/tape/random = 3,
		/obj/item/camera,
		/obj/item/scanner/gas,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/toxins, /obj/item/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/scientist/castenlau/pilot
	name = "pilot's locker"
	req_access = list(access_castelnau_prometeus_helm)

/obj/structure/closet/secure_closet/scientist/castenlau/pilot/WillContain()
	return list(
		/obj/item/spaceflare,
		/obj/item/flashlight/flare,
		/obj/item/storage/belt/utility/full,
		/obj/item/storage/backpack/dufflebag/eng
	)

/obj/structure/closet/crate/secure/biohazard
	req_access = list(access_castelnau_prometeus)