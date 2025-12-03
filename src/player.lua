local player = {};

player.DEFAULT_RADIUS = 64;
player.DEFAULT_SPEED = 128;

function player:new(pos, radius, speed)
    self.x = pos.x;
    self.y = pos.y;
    self.radius = radius or self.DEFAULT_RADIUS;
    self.speed = speed or self.DEFAULT_SPEED;

    return self
end

function player:update(dt)

end

function player:draw()

end


return player