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
		minwidth = x,
		minheight = y
	})
	player = Player:new(x, y, 0.45, 0.7)
end

function love.draw()
	love.graphics.setBackgroundColor(1, 1, 1)
	love.graphics.print({{0, 0, 0}, "seconds: " .. second}, 0, 0)
	player:show()
end

function love.update(dt)
	second = second + dt
	player:movement()
end
