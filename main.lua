require "player"
local player = nil
local x, y, w, h
local second = 0

function love.load()
	w, h = 1024, 768
	x, y = w / 2, h / 2
	love.window.setMode(w, h, {
		resizable = true,
		vsync = 0,
		minwidth = 400,
		minheight = 300
	})
	player = Player:new(x, y, 0.45, 0.7)
end

function love.draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("seconds: " .. second, 0, 0)
	player:show()
end

function love.update(dt)
	second = second + dt
	player:movement()
end
