print("How far")
input = io.read()

distance = tonumber(input)
distance = distance-1

for i=0,distance do
count = 0
while true do
turtle.digDown()
  if turtle.down() == false then
    break
  end
  count = count+1
end

while count ~= 0 do
  if turtle.up() == false then
  break
  end
  count = count-1
end
turtle.placeDown()
turtle.forward()
end

for i=0,distance do
turtle.back()
end
