/turf/simulated/wall
	paint_color = COLOR_WALL_GUNMETAL

/obj/structure/wall_frame
	paint_color = COLOR_WALL_GUNMETAL

/turf/simulated/wall/r_wall/hull/Initialize()
	. = ..()
	paint_color = COLOR_HULL
	update_icon()