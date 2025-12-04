local player = {};
player.__index = player;

player.DEFAULT_RADIUS = 32;
player.DEFAULT_SPEED = 128;

function player:new(pos, radius, speed)
    self.x = pos.x;
    self.y = pos.y;
    self.radius = radius or self.DEFAULT_RADIUS;
    self.speed = speed or self.DEFAULT_SPEED;

    setmetatable(self, player)

    return self
end

function player:update(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed * dt;
    end
    if love.keyboard.isDown("s") then
        self.y = self.y + self.speed * dt;
    end
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt;
    end
    if love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt;
    end
end

function player:draw()
    love.graphics.circle("line", self.x, self.y, self.radius)
end


return player