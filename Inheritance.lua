--[[
    Author: Joshua Grey
    Date: 24/06/2020
    Contents:
        Inheritance
]]
local Vehicle = require("OOPExample")

local v = Vehicle.new(10)
print(v.MaxSpeed)

local Car = {}
Car.__index = Car
setmetatable(Car, Vehicle)

function Car.new()
    local self = Vehicle.new
end