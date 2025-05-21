input_handlers = {
	vn_input = {
		AButtonDown = function()
			if current_scene.line_to_read < #current_scene.lines then
				current_scene.line_to_read = current_scene.line_to_read + 1
			else
				if #scenes > state.scene_index then
					increment_scene()
				end
			end
		end,
	},
	mf_input = {
		upButtonDown = function()
			state.is_held.u = true
		end,
		upButtonUp = function()
			state.is_held.u = false
		end,
		rightButtonDown = function()
			state.is_held.r = true
		end,
		rightButtonUp = function()
			state.is_held.r = false
		end,
		downButtonDown = function()
			state.is_held.d = true
		end,
		downButtonUp = function()
			state.is_held.d = false
		end,
		leftButtonDown = function()
			state.is_held.l = true
		end,
		leftButtonUp = function()
			state.is_held.l = false
		end
	}
}