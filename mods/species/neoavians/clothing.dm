/obj/item/clothing/gloves/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_AVIAN, 'mods/species/neoavians/icons/clothing/gloves.dmi')

/obj/item/clothing/accessory/cloak/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_AVIAN, 'mods/species/neoavians/icons/clothing/cloak.dmi')

/obj/item/clothing/under/avian_smock
	name = "smock"
	desc = "A loose-fitting smock favoured by neo-avians."
	icon = 'mods/species/neoavians/icons/clothing/smock.dmi'
	icon_state = ICON_STATE_WORLD
	bodytype_restricted = list(BODYTYPE_AVIAN)

/obj/item/clothing/under/avian_smock/worker
	name = "worker's smock"
	icon = 'mods/species/neoavians/icons/clothing/smock_grey.dmi'

/obj/item/clothing/under/avian_smock/rainbow
	name = "rainbow smock"
	desc = "A brightly coloured, loose-fitting smock - the height of neo-avian fashion."
	icon = 'mods/species/neoavians/icons/clothing/smock_rainbow.dmi'

/obj/item/clothing/under/avian_smock/security
	name = "armoured smock"
	desc = "A bright red smock with light armour insets, worn by neo-avian security personnel."
	icon = 'mods/species/neoavians/icons/clothing/smock_red.dmi'

/obj/item/clothing/under/avian_smock/engineering
	name = "hazard smock"
	desc = "A high-visibility yellow smock with orange highlights light armour insets, worn by neo-avian engineering personnel."
	icon = 'mods/species/neoavians/icons/clothing/smock_yellow.dmi'

/datum/gear/uniform/avian
	sort_category = "Xenowear"
	category = /datum/gear/uniform/avian
	whitelisted = list(SPECIES_AVIAN)

/datum/gear/uniform/avian/smock
	display_name = "plain smock (Neo-Avian)"
	path = /obj/item/clothing/under/avian_smock
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/avian/smock_worker
	display_name = "worker's smock (Neo-Avian)"
	path = /obj/item/clothing/under/avian_smock/worker

/datum/gear/uniform/avian/smock_rainbow
	display_name = "rainbow smock (Neo-Avian)"
	path = /obj/item/clothing/under/avian_smock/rainbow

/datum/gear/uniform/avian/smock_security
	display_name = "armoured smock (Neo-Avian)"
	path = /obj/item/clothing/under/avian_smock/security

/datum/gear/uniform/avian/smock_engineering
	display_name = "hazard smock (Neo-Avian)"
	path = /obj/item/clothing/under/avian_smock/engineering
