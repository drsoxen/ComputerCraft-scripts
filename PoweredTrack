term.clear()
term.setCursorPos(1,1)

print("How long do you want it")

input = io.read()
length = tonumber(input)

turtle.digDown()
turtle.down()

for i=0, length do

	while turtle.detect() do
		turtle.dig()
	end
		turtle.digUp()
		turtle.digDown()
		turtle.forward()
end

turtle.digDown()
turtle.digUp()

for i=0, length do
turtle.select(1)
turtle.placeDown()
turtle.back()
turtle.select(2)
turtle.place()
end

turtle.select(1)
turtle.placeDown()
turtle.up()
turtle.select(2)
turtle.placeDown()
turtle.up()

for i=0, length do
	turtle.dig()
	turtle.select(3)
	turtle.placeDown()
	turtle.forward()
end

turtle.select(3)
turtle.placeDown()

turtle.turnLeft()
turtle.turnLeft()

for i=0, length do
	turtle.digUp()
	turtle.forward()
end

turtle.forward()
turtle.turnLeft()
turtle.turnLeft()
turtle.dig()