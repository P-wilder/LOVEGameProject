require "player"
local player = nil
local x, y
function love.load()
	W, H = 1024, 768
	x, y = W / 2, H / 2
	Walk = 0.45
	Run = 0.7
	Second = 0
	love.window.setMode(W, H, {
		resizable = true,
		vsync = 0,
		minwidth = 400,
		minheight = 300
	})
end

function love.draw()
	love.graphics.print("Hello World!", x - 50, y)
	love.graphics.print("seconds: " .. Second, 0, 0)
	love.graphics.print("HELP", 760, 0)
	player = Player:new(x, y, Walk, Run)
end

function love.update(dt)
	Second = Second + dt
	Player.movement(player)
	--[[local walk = 0.45
	local run = 0.7
	local isW = love.keyboard.isDown('w')
	local isS = love.keyboard.isDown('s')
	local isA = love.keyboard.isDown('a')
	local isD = love.keyboard.isDown('d')
	local isShift = love.keyboard.isDown('lshift')
	if not isShift then
		if isW then
			Y = Y - walk
		elseif isS then
			Y = Y + walk
		end

		if isA then
			X = X - walk
		elseif isD then
			X = X + walk
		end
	elseif isShift then
		if isW then
			Y = Y - run
		elseif isS then
			Y = Y + run
		end

		if isA then
			X = X - run
		elseif isD then
			X = X + run
		end
	end]]--
end
