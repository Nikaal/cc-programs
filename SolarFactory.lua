--pastebin.com/D5aFjU5e
--pastebin.com/DRKBVriE
--pastebin.com/a2vcxmC7


-- SolarFactory
tArgs = {...}
count = tArgs[1]

for i=1, count do
  print("Crafting "..i.." / "..count)
  
  shell.run("Collect")
  shell.run("Craft")
end

-- Collect
-- RESOURCES --
local items = {}

-- refined iron
items[1] = 10
-- copper
items[2] = 9
-- tin
items[3] = 4
-- coal dust
items[4] = 3
-- rubber
items[5] = 18
-- redstone
items[6] = 6
-- glass
items[7] = 3
-- cobble
items[8] = 8

if turtle.getItemCount(1) ~= 0 then
  -- copper
  items[2] = 6
  -- rubber
  items[5] = 12
end

-- COLLECT --

for i=1, 8 do
  turtle.forward()
  
  for j=1, items[i] do
    rs.setOutput("top", true)
    sleep(0.2)
    rs.setOutput("top", false)
    sleep(0.2)
  end
end


-- Craft
turtle.forward()

turtle.turnRight()
sleep(0.2)
turtle.suck()
turtle.turnLeft()
sleep(0.2)
turtle.suck()
turtle.turnLeft()
sleep(0.2)
turtle.suck()

turtle.up()

for i=1, 3 do
	sleep(0.2)
	turtle.suck()
	turtle.turnRight()
end

turtle.down()

for i=1, 9 do
  turtle.forward()
end

sleep(1)

for i=1, 16 do
	if turtle.getItemCount(i) ~= 0 then
		turtle.select(i)
		turtle.transferTo(16)		
		break
	end
end

turtle.select(1)
turtle.suck()
turtle.turnLeft()
turtle.drop()

turtle.turnLeft()

turtle.select(16)
turtle.transferTo(1)
turtle.select(1)
