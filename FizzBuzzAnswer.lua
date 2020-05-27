--[[
    Author: Joshua Grey
    Date: 24/05/2020

    Contents:
        Fizz Buzz

]]

------------------------ Fizz Buzz ------------------------

local function FizzBuzz(Min, Max)
    local ret = {}
    for i = Min, Max, 1 do
        local op = ""
        if (i % 3) == 0 then
            op = op.."Fizz" 
        end

        if (i % 5) == 0 then
            op = op.."Buzz" 
        end

        if #op == 0 then
            op = i 
        end
        table.insert(ret, #ret + 1, op)
    end
    return ret
end

-- Temp to run Func FizzBuzz
local x = FizzBuzz(1, 100)

for index = 1, #x do
    print(x[index])
end
