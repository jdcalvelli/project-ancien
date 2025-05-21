import 'CoreLibs/graphics'
import 'CoreLibs/sprites'
import 'CoreLibs/timer'

import "scenes.lua"
import "input_handlers.lua"
import "utils/textbox.lua"

display = playdate.display
gfx = playdate.graphics
geometry = playdate.geometry

width, height = display.getSize();

display.setRefreshRate(24)

state = {
	scene_index = 1,
	pointer_location = {
		x = 0,
		y = 0,
	},
}

current_scene = scenes[state.scene_index]