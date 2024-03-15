--! file: player.lua

Player = Object.extend(Object)

States = {"IDLE", "RUN", "HEAL"}

function Player.new(x, y, width, height, speed, sprite)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.speed = speed
    self.sprite = sprite
    self.state = States.IDLE
end

function Player.move(dt)
    deltaX = 0
    deltaY = 0
    
    if love.keyboard.isDown("left") then
        deltaX = -1
    elseif love.keyboard.isDown("right") then
        deltaX = 1
    end

    if love.keyboard.isDown("up") then
        deltaY = -1
    elseif love.keyboard.isDown("down") then
        deltaY = 1
    end

    if deltaX ~= 0 or deltaY ~= 0 then
        self.state = States.RUN
        self.x = self.x + (deltaX * self.speed * dt)
        self.y = self.y + (deltaY * self.speed * dt)
    else
        self.state = States.IDLE
end

function Player.animate()

end

function Player.update(self, dt)
    self:move(dt)
end

function Player.draw(self)
    love.graphics.draw(sprite, self.x, self.y)
end