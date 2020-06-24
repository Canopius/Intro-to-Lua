--[[
    Author: Joshua Grey
    Date: 24/06/2020
    Contents:
        Constructors
        Methods
]]

local Vehicle = {}
Vehicle.__index = Vehicle -- Index metamethod

function Vehicle.new(Speed)
    local self = {}
    local Meta = setmetatable(self, Vehicle)

    -- Member / class variables

    self.Speed = 0
    self.MaxSpeed = Speed

    return Meta
end

-- Methods

function Vehicle:SpeedBoost(NewSpeed) -- Using : passes the self argument automatically
    self.MaxSpeed = NewSpeed
    return true
end

return Vehicle