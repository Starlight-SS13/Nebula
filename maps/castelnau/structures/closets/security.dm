/*
 * Castelnau Security
 */

/obj/structure/closet/secure_closet/warden/castenlau
	name = "sheriff's locker"
	req_access = list(access_castelnau_sheriff)

/obj/structure/closet/secure_closet/warden/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/head/beret/sec/corporate/warden,
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/storage/belt/holster/security,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/melee/baton/loaded,
		/obj/item/gun/energy/gun,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gun/energy/taser,
		/obj/item/handcuffs,
		/obj/item/hailer,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves/thick,
		/obj/item/flashlight/maglight,
		/obj/item/crowbar/prybar,
		/obj/item/radio/off,
		/obj/item/clothing/mask/gas/half,
	)

/obj/structure/closet/secure_closet/security/castenlau
	name = "deputy sheriff's locker"
	req_access = list(access_castelnau_security)


/obj/structure/closet/secure_closet/security/castenlau/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/melee/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gun/energy/gun/small,
		/obj/item/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/flashlight/maglight,
		/obj/item/crowbar/prybar,
		/obj/item/radio/off,
		/obj/item/clothing/mask/gas/half,
	)

/*/obj/structure/closet/secure_closet/security/castenlau/specialist
	name = "security specialist's locker"
	req_access = list(access_castelnau_security)

/obj/structure/closet/secure_closet/security/castenlau/specialist/WillContain()
	return list(
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/storage/belt/holster/forensic,
		/obj/item/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/taperoll/police,
		/obj/item/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gun/energy/gun/small,
		/obj/item/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/forensic,
		/obj/item/flashlight/maglight,
		/obj/item/crowbar/prybar,
		/obj/item/radio/off,
		/obj/item/clothing/mask/gas/half,
		/obj/item/modular_computer/laptop/preset/custom_loadout/advanced,
		/obj/item/storage/briefcase/crimekit
	) */

/obj/structure/closet/crate/secure/weapon
	req_access = list(access_castelnau_security)

/obj/structure/closet/secure_closet/brig
	req_access = list(access_castelnau_security)