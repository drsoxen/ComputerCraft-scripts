term.clear()
term.setCursorPos(1,1)
print("Welcome to NPC House Builder")
print("Please make sure the main building material is in slots 1,2 and 3")
print("and that two torches are in slot 4 and a door is in slot 5")
print("press enter to start")
io.read()


woodBlock = 1
turtle.select(woodBlock)

for i=1,2 do
		turtle.up()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,3 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
	turtle.forward()
	for j=1,2 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
	turtle.turnRight()
end

woodBlock = 2
turtle.select(woodBlock)

for i=1,2 do
		turtle.up()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
		turtle.turnRight()
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end
	turtle.turnRight()
end

woodBlock = 3
turtle.select(woodBlock)

	turtle.turnRight()
	turtle.forward()
	turtle.turnLeft()
	turtle.up()


isTurnLeft = false


for x=1,5 do
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end

turtle.placeDown(woodBlock)

if x ~= 5 then
	if isTurnLeft == true then
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	isTurnLeft = false
	else
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
	isTurnLeft = true
	end

end

end

	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	turtle.up()

for x=1,3 do
	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end

	turtle.placeDown(woodBlock)

if x ~= 3 then
	if isTurnLeft == true then
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	isTurnLeft = false
	else
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
	isTurnLeft = true
	end
end

end

	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	turtle.up()

	for j=1,6 do
		turtle.placeDown(woodBlock)
		turtle.forward()
	end

	turtle.placeDown(woodBlock)



turtle.turnRight()
turtle.turnRight()


	for j=1,7 do
		turtle.forward()
	end

	for j=1,7 do
		turtle.down()
	end

turtle.turnRight()
turtle.turnRight()

	for j=1,5 do
		turtle.forward()
	end

	turtle.up()
	turtle.up()
	turtle.up()

torch = 4
turtle.select(torch)
turtle.place()

	turtle.down()
	turtle.down()
	turtle.down()

turtle.turnRight()
turtle.turnRight()

	for j=1,5 do
		turtle.forward()
	end

	turtle.turnRight()
turtle.turnRight()

door = 5
turtle.select(door)
turtle.place()

turtle.back()

	turtle.up()
	turtle.up()

	torch = 4
turtle.select(torch)
turtle.place()

	turtle.down()
	turtle.down()

--[[
turtle.craft()
turtle.forward()
turtle.back()
turtle.up()
turtle.down()
turtle.turnLeft()
turtle.turnRight()
turtle.select()
turtle.getItemCount()
turtle.getItemSpace()
turtle.attack()
turtle.attackUp()
turtle.attackDown()
turtle.dig()
turtle.digUp()
turtle.digDown()
turtle.place()
turtle.placeUp()
turtle.placeDown()
turtle.detect()
turtle.detectUp()
turtle.detectDown()
turtle.compare()
turtle.compareUp()
turtle.compareDown()
turtle.compareTo()
turtle.drop()
turtle.dropUp()
turtle.dropDown()
turtle.suck()
turtle.suckUp()
turtle.suckDown()
turtle.refuel()
turtle.getFuelLevel()
turtle.transferTo()
]]