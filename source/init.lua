-- TRUE GLOBALS NEEDED ACROSS ALL FILES

import 'CoreLibs/graphics'
import 'CoreLibs/sprites'
import 'CoreLibs/timer'

display = playdate.display
gfx = playdate.graphics
geometry = playdate.geometry

width, height = display.getSize();

display.setRefreshRate(24)

state = {
	scene_index = 1,
	is_held = {
		u = false,
		r = false,
		d = false,
		l = false,
	},
	pointer_location = {
		x = 0,
		y = 0,
	},
}

-- GLOBALS THAT RELY ON ABOVE GLOBALS
import "scenes.lua"
import "input_handlers.lua"

current_scene = scenes[state.scene_index]
playdate.inputHandlers.push(input_handlers.vn_input)

-- UTILITY FUNCTIONS
import "utils/increment_scene.lua"
import "utils/textbox.lua"