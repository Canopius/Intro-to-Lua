--[[
    Author: Joshua Grey

    Contents:
        - Comments
        - Print
        - Variables + Data Types
        - If
        - Loops
        - Operators
        - Math Libary
        - Functions
]]


------------------- Comments -------------------

-- This is a single line comment, this code will not run

--[[
    This
    is
    a
    multi-line
    comment
]]

------------------- Print -------------------

print("This will show in the output")

------------------- Variables + Data Types-------------------

-- The two types of variables are as follows:
_G.globalVar = nil -- Slighlty slower than local
local localVar = nil -- Slightly faster than global (fastest when referenced in the same scope)

-- These are the data types in lua (NB: a variable can change its data type unlike in other languages)

-- Basic
local no = 1 -- Number value (Lua does not have integers and floats)
local str = "String" -- String
local bool = true -- Bool: true / false
local n = nil -- nil
local tab = {} -- table

-- Adv
local func = function() end -- Function
local userData -- Unable to provide example because Userdata values cannot be created or modified in Lua, only through the C API 
local thread = coroutine.wrap(func)() -- Thread

------------------- If -------------------
print("\n-----If----\n")

if 1 > 2 then  -- If the condition is met then the code inside will run, only one per if statement
    print("1 > 2, which universe are we in?")
elseif 2 > 1 then -- If the prev condition is not met, but this one is then this code will run, as many as you like per if statement (optional)
    print("2 > 1")
else -- If none of the prev conditions are met then this code will run -- only one at the end of each if statement (optional)
    print("Else")
end

--[[
The condition can be almost anything you like:

Variable == Variable
x+y == 11 and not (z)
]]


------------------- Loops -------------------

-- For loop
print("\n-----Loops----\n")
local ShoppingList = {"Pear", "Apple", "Bread", nil, "Milk"}

for index = 1, #ShoppingList do  -- For loop (fastest out of this(numeric), pairs and ipairs)
    print(ShoppingList[index])
end

for _, v in pairs(ShoppingList) do -- Does not guarantee order but does not stop at nil
    print(v)
end

for _, v in ipairs(ShoppingList) do -- Stops at nil but guarantees order (only traverses array part of the table)
    print(v)
end

for i = 1, 5, 1 do  -- For loop -- Start, End, Increment
    print(i)
end

-- While loop

while 2 < 1 do -- Will always loop when the condition is true (same conditions as an if )
    print("2 < 1????????")
end

------------------- Operators -------------------

--[[

An operator is a special set of symbols used to perform an operation or conditional evaluation.


** Logical **
and     Evaluates as true only if both conditions are true
or      Evaluates as true if either condition is true
not     Evaluates as the opposite of the condition

** Arithmetic **
+       Addition   
-       Subtraction
/       Division
*       Multiplication
^       Exposition (to the power of)
%       Modulus (returns remainder of a division)

** Relational **

==      Equal to
~=      Not equal to
>=      Greater than or equal to
<=      Less than or equal to
>       Greater than
<       Less than

** Misc **
#       Length
..      Concatenates 2 strings (turns 2 strings into 1)

]]

------------------- Math Libary -------------------

-- Contains loads of functions for all types of maths, can google this E.g. 
print("\n-----Math Libary----\n")
print("math.floor(1.24): ", math.floor(1.24))
print("math.pi: ", math.pi)

------------------- Functions -------------------

local function add(argument1, argument2)
    return argument1 + argument2
end

print("\n-----Functions----\n")

print("2 + 5 = ".. add(2, 5))
