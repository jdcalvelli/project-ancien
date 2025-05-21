function drawTextbox(text)
	-- test scene vn
	local vnRect = geometry.rect.new(0, 186, width, height - 180)
	gfx.pushContext()
	gfx.setColor(gfx.kColorBlack)
	gfx.fillRect(vnRect)
	gfx.popContext()

	gfx.pushContext()
	gfx.setImageDrawMode(gfx.kDrawModeFillWhite)
	assert(vnRect)
	gfx.drawText(
		text,
		vnRect.x + 8,
		vnRect.y + 8,
		vnRect.width - 64,
		vnRect.height - 8
	)
	gfx.popContext()

	gfx.pushContext()
	gfx.setColor(gfx.kColorWhite)
	gfx.fillCircleAtPoint(vnRect.width - 32, vnRect.y + vnRect.height / 2 - 2, 16)
	gfx.drawTextAligned("*A*", vnRect.width - 32, vnRect.y + vnRect.height / 2 - 10, kTextAlignment.center)
	gfx.popContext()
end