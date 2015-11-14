scriptId = 'com.thalmic.examples.gesturescript'
scriptTitle = "Gesture script"
scriptDetailsUrl = ""

--file = io.open("words.txt", "a")
--io.output(file)

--function hello()
--myo.debug("FIST PRINTED")
--end
roll = 0
pitch = 0
yaw = 0

function hello()
	io.write("Hello")
end	

function onActiveChange(isActive)
	roll = getYaw()
	pitch = getPitch()
	yaw = myo.getYaw()
end		


function onPoseEdge(pose, edge)

	if pitch > math.pi/4 and myo.pose() == "fingersSpread" and myo.getYaw() != yaw 
		debug("hello")
	end
	
	end
end