--[[ This makes the turtle go forward and down till it hits a wall then backs up and places a block then when it can't backup anymore it goes up and places below. then repetes]]
while true do

	if turtle.detectDown() == false then
			turtle.down()
	end

		if turtle.detect() == false then
			turtle.forward()
	end

	if turtle.detectDown() == true and turtle.detect() == true then
		
		for i=1,16 do

			if turtle.getItemCount(i) > 0 then
				turtle.select(i)
				break
			end
			
		end

		if turtle.back() == true then
			turtle.place()
		else
			turtle.up()
			turtle.placeDown()
		end

	end

end
