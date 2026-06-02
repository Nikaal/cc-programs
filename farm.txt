-- Farm by Gaarnik
-- Version 1.0

-- VAR

-- FUNCTIONS
function monter()
  turtle.up()
end

function avancer()
  turtle.dig()
  turtle.forward()
end

function tournerDroite()
  avancer()
  turtle.turnRight()
  avancer()
  turtle.turnRight()
end

function tournerGauche()
  avancer()
  turtle.turnLeft()
  avancer()
  turtle.turnLeft()
end

function recolter()
  turtle.digDown()
  turtle.placeDown()
end

function recupererGraines()
  rs.setOutput("right", true)
  sleep(0.5)
  rs.setOutput("right", false)
  sleep(10)
end

function viderInv()
  for i=1,16 do
    rs.setOutput("back", true)
    sleep(0.5)
    rs.setOutput("back", false)
    sleep(0.5)
  end
end

-- MAIN
local droite = true

recupererGraines()
monter()

for i=1,7 do
	for j=1,7 do
		avancer()
		recolter()
	end
	if droite == true then
		droite = false
		tournerDroite()
	else
		droite = true
		tournerGauche()
	end
end

shell.run("go", "forward", "8")
shell.run("turn", "right")
shell.run("go", "forward", "6")
shell.run("turn", "right")
shell.run("go", "down")

viderInv()
