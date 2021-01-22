//mining
/obj/machinery/suit_cycler/mining/Initialize()
	. = ..()
	available_bodytypes += BODYTYPE_RESOMI

/obj/item/clothing/suit/space/void/mining/Initialize()
	LAZYINITLIST(sprite_sheets)
	sprite_sheets[BODYTYPE_RESOMI] = 'starlight/mods/species/resomi/icons/clothing/exp/spacesuit/void/mining/suit.dmi'
	. = ..()

/obj/item/clothing/head/helmet/space/void/mining/Initialize()
	LAZYINITLIST(sprite_sheets)
	sprite_sheets[BODYTYPE_RESOMI] = 'starlight/mods/species/resomi/icons/clothing/exp/spacesuit/void/mining/helmet.dmi'
	. = ..()