--Getting the variables
local tArgs = { ... }
steps = tonumber(tArgs[1])
torch = tArgs[2]

--Assigning defaults
steps = steps or 1
torch = torch or "t"[/size]

--Starting the dig
for x = 1, steps
if turtle.forward() == false then
repeat
turtle.dig()
sleep(0.25)
until turtle.forward() == true
end
end

--Getting into position for the return
turtle.digUp()
turtle.up()
turtle.turnRight()
turtle.turnRight()

--Changing the variable to allow for torches to be placed every 8
steps = steps / 8

--Starting the return
for x = 1, steps do
if torch == "t" then
turtle.turnLeft()
turtle.dig()
turtle.place()
turtle.turnRight()
end

for x = 1, 8 do
if turtle.forward() == false then
repeat
turtle.dig()
sleep(0.25)
until turtle.forward() == true
end
end
end













--Getting the variables
local tArgs = { ... }
if #tArgs < 1 then
    print("Usage: branch <length> <torches>")
    return true
end
steps = tonumber(tArgs[1])
if #tArgs >= 2 and tArgs[2] == "nt" then
    torch = false
else
    torch = true
end

--Starting the dig
for x = 1, steps do
    if not turtle.forward() then
        repeat
            turtle.dig()
            sleep(0.6)
        until turtle.forward()
    end
end

--Getting into position for the return
turtle.digUp()
turtle.up()
turtle.turnRight()
turtle.turnRight()

--Starting the return
for x = 1, steps do
    if torch and x % 8 == 0 then
        turtle.placeDown()
    end
    if not turtle.forward() then
        repeat
            turtle.dig()
            sleep(0.25)    
        until turtle.forward()
    end
end
