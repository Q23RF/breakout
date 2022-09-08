Powerup = class{}

function Powerup:init(x, y, skin)
	self.x = x
	self.y = y
	self.dy = 1
	self.skin = skin
end

function Powerup:update(dt)
	self.y = self.y + self.dy * dt
end

function Powerup:render()
	love.graphics.draw(gTextures['main'], gFrames['powerups'][self.skin],
    self.x, self.y)
end