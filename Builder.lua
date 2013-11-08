workingDir = "disk/BluePrints"
fileName = ""

handle = nil
name = nil
width = nil
depth = nil
height = nil

dataAmounts = {}

function WelcomeScreen()
	term.clear()
	term.setCursorPos(1,1)
	print("Welcome to Builder")
	print("")
	print("Please choose a blue print to build")
	print("")
end

function ListFiles(fileList)
	fileListIndex = 1
	for _, file in ipairs(FileList) do
		if file ~= ".DS_Store" then
	  		print(fileListIndex..": "..file)
	  		fileListIndex = fileListIndex+1
		end
	end
end

function GetInput(fileList)
local fileName = ""
	repeat

		input = io.read()

		fileListIndex = 1
		
	for _, file in ipairs(FileList) do
		if file ~= ".DS_Store" then
	  		if fileListIndex == tonumber(input) then
	  			fileName = file
	  			break
	  		end
	  		fileListIndex = fileListIndex+1
		end
	end

		fileName = workingDir.."/"..fileName

		if fs.exists(fileName) == false then
			print("Not a valid filename")
		end

	until fs.exists(fileName) == true

	return fileName
end

function GetDataAmounts()
	local dataAmounts = {}

	for i = 1, height do
		for j = 1, depth do
			currentLine = handle.readLine()
			for k = 1, width do
			    local c = currentLine:sub(k,k)
			    local index = tonumber(c)

			    if index ~= 0 and index ~= nil then
				    if dataAmounts[index] == nil then
				    	dataAmounts[index] = 1
				    else
		    			dataAmounts[index] = dataAmounts[index]+1
		    		end

	    		end
			end
		end
		handle.readLine()
	end
	return dataAmounts
end

function GetFileHeaderDetails(fileName)
	name = handle.readLine()
	width = handle.readLine()
	depth = handle.readLine()
	height = handle.readLine()
	handle.readLine()
end

function PrintDataAmounts(dataAmounts)
	term.clear()
	term.setCursorPos(1,1)

	print("You need:")
	for key,value in pairs(dataAmounts) do 
	  	print(value.." in slot "..key)
	end


	print("Press enter to start")
	io.read()
end

function Build()
	
	term.clear()
	term.setCursorPos(1,1)
	print("Building " .. name)

	for i=1,5 do
		handle.readLine()
	end

	turtle.up()

	for i = 1, height do
		for j = 1, depth do
			currentLine = handle.readLine()
			for k = 1, width do
			    local c = currentLine:sub(k,k)
			    
			    if tonumber(c) ~= 0 then
			    	turtle.select(tonumber(c))
			    	

			    	if turtle.getItemCount(tonumber(c)) == 0 then
			    		repeat
			    		term.clear()
						term.setCursorPos(1,1)
			    		print("Please refill slot "..tonumber(c))
			    		print("Press enter to continue")
						io.read()
			    		until turtle.getItemCount(tonumber(c)) ~= 0
			    	end
			    	turtle.placeDown()
				end
			    turtle.forward()
			end

			turtle.turnRight()
			turtle.turnRight()
			for k = 1, width do
				turtle.forward()
			end
			turtle.turnLeft()
			turtle.forward()
			turtle.turnLeft()

		end

		turtle.turnLeft()
		for j = 1, depth do
			turtle.forward()
		end
		turtle.turnRight()
		turtle.up()
		
	handle.readLine()
	end

	turtle.turnLeft()
	turtle.forward()
	turtle.turnRight()


	for j = 1, height do
		turtle.down()
	end

end
--[[Header]]

WelcomeScreen()

FileList = fs.list(workingDir)
ListFiles(FileList)
print("")
fileName = GetInput(FileList)

handle = fs.open(fileName, "r")
	GetFileHeaderDetails(fileName)
	dataAmounts = GetDataAmounts()
	PrintDataAmounts(dataAmounts)
handle.close()


handle = fs.open(fileName, "r")
	Build()
handle.close()




