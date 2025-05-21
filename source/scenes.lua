scenes = {
	-- vn scene 1
	{
		scene_type = "VN",
		line_to_read = 1,
		lines = {
			"hello world this is me testing the vn scene type visuals we shouldn't exceed a certain",
			"test line 1",
			"test line 2",
			"test line 3"
		},
		elements = {
			man = gfx.image.new("images/microfiche-testportrait.png")
		}
	},
	-- vn scene 2
	{
		scene_type = "VN",
		line_to_read = 1,
		lines = {
			"test of second scene",
			"test line 1 second scene"
		},
		elements = {}
	},
	-- mf scene 3
	{
		scene_type = "MF",
		elements = {}
	}
}