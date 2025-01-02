function love.load()
	W, H = 800, 600
	X, Y = W / 2, H / 2
	Walk = 0.4
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
	love.graphics.print("Hello World!", X - 50, Y)
	love.graphics.print("seconds: " .. Second, 0, 0)
	love.graphics.print("HELP", 760, 0)
end

function love.update(dt)
	Second = Second + dt
	if not love.keyboard.isDown('lshift') then
		if love.keyboard.isDown('w') then
			Y = Y - Walk
		elseif love.keyboard.isDown('s') then
			Y = Y + Walk
		end

		if love.keyboard.isDown('a') then
			X = X - Walk
		elseif love.keyboard.isDown('d') then
			X = X + Walk
		end
	elseif love.keyboard.isDown('lshift') then
		if love.keyboard.isDown('w') then
			Y = Y - Run
		elseif love.keyboard.isDown('s') then
			Y = Y + Run
		end

		if love.keyboard.isDown('a') then
			X = X - Run
		elseif love.keyboard.isDown('d') then
			X = X + Run
		end
	end
end
