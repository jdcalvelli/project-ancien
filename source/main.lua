import "init.lua"

-- pre update function invocation is basically init function

-- update loop (as lua coroutine)
function playdate.update()
	gfx.clear()

	-- drawing elements in scene
	for _, value in pairs(current_scene.elements) do
		value:drawCentered(width / 2, height / 2)
	end

	if current_scene.scene_type == "VN" then
		drawTextbox(current_scene.lines[current_scene.line_to_read])
	elseif current_scene.scene_type == "MF" then
		-- draw box that can be moved with buttons - this will be an image1
		local speed = 2
		if state.is_held.u and state.pointer_location.y > 0 then
			state.pointer_location.y = state.pointer_location.y - speed
		end
		if state.is_held.r and state.pointer_location.x < width - 16 then
			state.pointer_location.x = state.pointer_location.x + speed
		end
		if state.is_held.d and state.pointer_location.y < height - 16 then
			state.pointer_location.y = state.pointer_location.y + speed
		end
		if state.is_held.l and state.pointer_location.x > 0 then
			state.pointer_location.x = state.pointer_location.x - speed
		end
		gfx.setColor(gfx.kColorBlack)
		gfx.fillRect(state.pointer_location.x, state.pointer_location.y, 16, 16)
	end
end