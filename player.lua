Player = {x=0, y=0, walk=0, run=0}

function Player:new(x, y, walk, run)
        t = {x=x, y=y, walk=walk, run=run}
        setmetatable(t, self)
        self.__index = self
        return t
end

function Player:movement()
	local isW = love.keyboard.isDown('w')
	local isS = love.keyboard.isDown('s')
	local isA = love.keyboard.isDown('a')
	local isD = love.keyboard.isDown('d')
	local isShift = love.keyboard.isDown('lshift')
	if not isShift then
		if isW then
			self.y = self.y - self.walk
		elseif isS then
			self.y = self.y + self.walk
		end

		if isA then
			self.x = self.x - self.walk
		elseif isD then
			self.x = self.x + self.walk
		end
	elseif isShift then
		if isW then
			self.y = self.y - self.run
		elseif isS then
			self.y = self.y + self.run
		end

		if isA then
			self.x = self.x - self.run
		elseif isD then
			self.x = self.x + self.run
		end
	end
end

function Player:show()
        local playerSprite = love.graphics.newImage("BoodreauBasic.png")
        love.graphics.draw(playerSprite, self.x, self.y)
end