/datum/map/tethys
	default_currency             = /decl/currency/deurel
	default_starting_cash_choice = /decl/starting_cash_choice/cash/half
	game_year = -1840

/stationdate2text()
	. = replacetext(..(),"-"," AE, ")

/decl/currency/deurel
	name          = "deurels"
	name_singular = "deurel"
	name_suffix   = "dt"
	material      = /decl/material/gas/hydrogen/deuterium

/decl/currency/deurel/build_denominations()
	denominations = list(
		new /datum/denomination/coin/large(src, 1000, "one thousand", COLOR_YELLOW),
		new /datum/denomination/coin/mid(src,   500,  "five hundred", COLOR_GREEN ),
		new /datum/denomination/coin/mid(src,   100,  "one hundred",  COLOR_PURPLE),
		new /datum/denomination/coin(src,       1,    "one",          "#999999"   )
	)
	..()

/datum/map/tethys/get_map_info()
	return {"<small>Long time ago, humanity built a colonial seedship. \
	Fitted with the most reliable equipment, it was travelling through darkness of space.. until something went wrong. \
	On-board computer decided to expand their journey by a few years.. \
	When they crashed on unknown planet in uncharted space, they knew: it was a start for a new human era.</small> <br>
	Nowadays, it's [game_year] AE. You are onboard <b>[station_name]</b>, a facility placed in deeps of New Omaha, second planet in the K'tarr star system."}
