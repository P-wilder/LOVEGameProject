function love.load()
	W, H = 800, 600
	X, Y = W / 2, H / 2
	Second = 0
	love.window.setMode(W, H, {
		resizable = true,
		vsync = 0,
		minwidth = 400,
		minheight = 300
	})
end

function love.draw()
	love.graphics.print("Hello World!", X - 50, Y)
	love.graphics.print("seconds: " .. Second, 0, 0)
	love.graphics.print("HELP", 760, 0)
end

function love.update(dt)
	Second = Second + dt
end
