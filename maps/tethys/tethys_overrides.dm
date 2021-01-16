//merch prog

/datum/computer_file/program/merchant
	required_access = null

//SMES preset + potato buff

/obj/machinery/power/port_gen/pacman/super/potato
	desc           = "PTTO-3, an industrial all-in-one nuclear power plant by Neo-Chernobyl GmbH. Uses uranium as a fuel source."
	power_gen      = 250 KILOWATTS
	time_per_sheet = 7200

/obj/machinery/power/smes/buildable/tethys
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil/super_capacity = 4)

//Airlocks

/obj/machinery/door/airlock/hatch/tethys/Initialize()
	. = ..()
	var/obj/effect/floor_decal/industrial/hatch/yellow/decal
	var/obj/machinery/door/firedoor/fire
	if(!(locate(decal) in loc)) decal = new(loc)
	if(!(locate(fire)  in loc)) fire  = new(loc)
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/effect/wallframe_spawn/activate()
	. = ..()
	var/obj/machinery/door/firedoor/fire
	if(!(locate(fire)  in loc)) fire  = new(loc)

//depts

/obj/machinery/door/airlock/hatch/tethys/eng
	stripe_color = COLOR_WARM_YELLOW

/obj/machinery/door/airlock/hatch/tethys/med
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/hatch/tethys/com
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/tethys/sci
	stripe_color = COLOR_RESEARCH

//prefilled lathe

/obj/machinery/fabricator/tethys/Initialize()
	. = ..()
	stored_material[/decl/material/solid/metal/steel]     = base_storage_capacity[/decl/material/solid/metal/steel]
	stored_material[/decl/material/solid/metal/aluminium] = base_storage_capacity[/decl/material/solid/metal/aluminium]
	stored_material[/decl/material/solid/glass]           = base_storage_capacity[/decl/material/solid/glass]
	stored_material[/decl/material/solid/plastic]         = base_storage_capacity[/decl/material/solid/plastic]

//For the sake of kinetic guns (yeah, its copy of designs_arms_ammo.dm whatever it has invalid type)

/datum/fabricator_recipe/arms_ammo
	category = "Arms and Ammunition"
	path     = /obj/item/syringe_cartridge

/datum/fabricator_recipe/arms_ammo/shotgun_holder
	path = /obj/item/ammo_magazine/shotholder/empty

/datum/fabricator_recipe/arms_ammo/shotgun_blank
	name = "ammunition (shotgun, blank)"
	path = /obj/item/ammo_casing/shotgun/blank

/datum/fabricator_recipe/arms_ammo/shotgun_flash
	name = "ammunition (shotgun, flash)"
	path = /obj/item/ammo_casing/shotgun/flash

//weapons

/datum/fabricator_recipe/arms_ammo/hidden
	path   = /obj/item/hatchet/machete/steel
	hidden = TRUE

/datum/fabricator_recipe/arms_ammo/hidden/tacknife
	path   = /obj/item/knife/combat

/datum/fabricator_recipe/arms_ammo/hidden/flamethrower
	path   = /obj/item/flamethrower/full

//ammo

/datum/fabricator_recipe/arms_ammo/hidden/shotgun_bean
	name = "ammunition (shotgun, beanbag)"
	path = /obj/item/ammo_casing/shotgun/beanbag

/datum/fabricator_recipe/arms_ammo/hidden/shotgun_slug
	name = "ammunition (slug, shotgun)"
	path = /obj/item/ammo_casing/shotgun

/datum/fabricator_recipe/arms_ammo/hidden/shotgun_pellet
	name = "ammunition (shell, shotgun)"
	path = /obj/item/ammo_casing/shotgun/pellet

/datum/fabricator_recipe/arms_ammo/hidden/shotgun_stun
	name = "ammunition (stun cartridge, shotgun)"
	path = /obj/item/ammo_casing/shotgun/stunshell

//smg

/datum/fabricator_recipe/arms_ammo/hidden/magazine_smg_rubber
	name = "ammunition (SMG rubber) top mounted"
	path = /obj/item/ammo_magazine/smg/rubber

/datum/fabricator_recipe/arms_ammo/hidden/magazine_smg_topmounted
	name = "ammunition (SMG, top mounted)"
	path = /obj/item/ammo_magazine/smg

//magnum

/datum/fabricator_recipe/arms_ammo/hidden/speedloader_magnum
	name = "ammunition (speedloader, magnum)"
	path = /obj/item/ammo_magazine/speedloader

//pistols

/datum/fabricator_recipe/arms_ammo/hidden/magazine_pistol
	name = "ammunition (pistol)"
	path = /obj/item/ammo_magazine/pistol

/datum/fabricator_recipe/arms_ammo/hidden/magazine_pistol_rubber
	name = "ammunition (pistol, rubber)"
	path = /obj/item/ammo_magazine/pistol/rubber

/datum/fabricator_recipe/arms_ammo/hidden/magazine_small
	name = "ammunition (holdout)"
	path = /obj/item/ammo_magazine/pistol/small

//misc

/datum/fabricator_recipe/arms_ammo/hidden/magazine_arifle
	name = "ammunition (rifle magazine)"
	path = /obj/item/ammo_magazine/rifle

/datum/fabricator_recipe/arms_ammo/hidden/speedloader_laser
	name = "ammunition (speedloader, laserbulb)"
	path = /obj/item/ammo_magazine/speedloader/laser_revolver