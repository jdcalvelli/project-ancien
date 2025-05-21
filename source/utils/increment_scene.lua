function increment_scene()
	state.scene_index = state.scene_index + 1
	current_scene = scenes[state.scene_index]
	if current_scene.scene_type == "MF" then
		playdate.inputHandlers.pop()
		playdate.inputHandlers.push(input_handlers.mf_input)
	elseif current_scene.scene_type == "VN" then
		playdate.inputHandlers.pop()
		playdate.inputHandlers.push(input_handlers.vn_input)
	end
end