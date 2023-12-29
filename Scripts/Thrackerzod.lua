function onPlayerTurn(player)
    if player.color == "Red" then
        self:setPositionSmooth({0.14, 0.17, -17.63})
        self:setRotationSmooth({0.77, 156.16, 0.0})
    elseif player.color == "Green" then
        self:setPositionSmooth({-15.06, 0.17, -8.81})
        self:setRotationSmooth({0.54, 215.93, 0.0})
    elseif player.color == "White" then
        self:setPositionSmooth({-15.19, 0.17, 8.64})
        self:setRotationSmooth({0.48, 273.69, 0.0})
    elseif player.color == "Purple" then
        self:setPositionSmooth({-0.13, 0.17, 17.52})
        self:setRotationSmooth({0.78, 340.19, 0.0})
    elseif player.color == "Blue" then
        self:setPositionSmooth({14.99, 0.17, 9.00})
        self:setRotationSmooth({0.23, 39.81, 0.0})
    elseif player.color == "Brown" then
        self:setPositionSmooth({15.19, 0.17, -8.68})
        self:setRotationSmooth({1.66, 94.59, 0.0})
    elseif player.color == "Orange" then
        self:setPositionSmooth({-32.50, 5.19, 0.00})
        self:setRotationSmooth({0.0, 255.0, 0.0})
    end
end