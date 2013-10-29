term.clear()
term.setCursorPos(1,1)
print("Welcome to XYMine")
print("")
print("Please enter the distance X")
print("X is the distance that the turtle will traval in its current direction")
print("X:")
input = io.read()
X = tonumber(input)

term.clear()
term.setCursorPos(1,1)
print("Welcome to XYMine")
print("")
print("Please enter the distance Y")
print("Y is the distance that the turtle will traval to the left of its cuttent position")
print("Y:")
input = io.read()
Y = tonumber(input)

term.clear()
term.setCursorPos(1,1)
print("Welcome to XYMine")
print("")
print("Should the turtle clear anything above it 0-1")
input = io.read()
digUp = tonumber(input)

term.clear()
term.setCursorPos(1,1)
print("Running...")

isDirectionLeft = true

count = 0

for i=1,Y do
  for j=1,X do
    local tries = 0
    while turtle.forward() ~= true do

      turtle.dig()
      turtle.attack()

      sleep(0.4)
      if digUp == 1 then
        while turtle.detectUp() == true do
        	turtle.digUp();
          turtle.up()
          count = count+1
        	sleep(0.4)
        end
        while count ~= 0 do
          turtle.down()
          count = count-1
        end
      end
      tries = tries + 1
      if tries>500 then
        return false
      end
    end
  end
  if i ~= Y then
  	if isDirectionLeft == true then
  		turtle.turnLeft()
  		turtle.dig()
  		turtle.forward()
  		turtle.turnLeft()
  		isDirectionLeft = false
  	else
  		turtle.turnRight()
  		turtle.dig()
  		turtle.forward()
  		turtle.turnRight()
  		isDirectionLeft = true
  	end
  end
end

--[[
if isDirectionLeft == true then
  turtle.turnLeft()
  turtle.turnLeft()

  for i=1,Y do
    turtle.forward()
  end
  turtle.turnLeft()

else

  for i=1,X do
    turtle.forward()
  end
  turtle.turnLeft()
  for i=1,Y do
    turtle.forward()
  end
]]








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