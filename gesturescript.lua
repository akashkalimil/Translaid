scriptId = 'com.thalmic.examples.gesturescript'
scriptTitle = "debug"
scriptDetailsUrl = ""

myo.setLockingPolicy("none")


function onPoseEdge(pose, edge)
    --myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    pitch = myo.getPitch()
    roll = myo.getRoll()
	yaw = myo.getYaw()
	
    pi = math.pi
	if edge == "on" and pose == "fist" and pitch < .5 then
		myo.debug("What time is it?")
		myo.keyboard("h","press")
		myo.keyboard("return","press")
		myo.keyboard("h","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "waveIn" and pitch < .5 then
		myo.debug("Thank You")
		myo.keyboard("n","press")
		myo.keyboard("return","press")
		myo.keyboard("n","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "waveOut" and pitch < .5 and yaw > -1.25 then
		myo.debug("Hello")
		myo.keyboard("a","press")
		myo.keyboard("return","press")
		myo.keyboard("a","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "fist" and pitch > .5 then
		myo.debug("Where is the washroom?")
		myo.keyboard("i","press")
		myo.keyboard("return","press")
		myo.keyboard("i","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "waveIn" and pitch > .5 then
		myo.debug("where is the closest restaurant?")
		myo.keyboard("c","press")
		myo.keyboard("return","press")
		myo.keyboard("c","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "waveOut" and pitch > .5 and yaw > -1.5 then
		myo.debug("Can you help find _")
		myo.keyboard("k","press")
		myo.keyboard("return","press")
		myo.keyboard("k","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "fingersSpread" and pitch < .5 then
		myo.debug("Where is the closest bus station?")
		myo.keyboard("f","press")
		myo.keyboard("return","press")
		myo.keyboard("f","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "fingersSpread" and pitch > .5 then
		myo.debug("I need help, call 9-1-1")
		myo.keyboard("d","press")
		myo.keyboard("return","press")
		myo.keyboard("d","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "doubleTap" and pitch < .5 then
		myo.debug("Goodbye")
		myo.keyboard("b","press")
		myo.keyboard("return","press")
		myo.keyboard("b","press")
		myo.keyboard("return","press")
	end
	if edge == "on" and pose == "doubleTap" and pitch > .5 then
		myo.debug("I love Digiflare")
		myo.keyboard("p","press")
		myo.keyboard("return","press")
		myo.keyboard("p","press")
		myo.keyboard("return","press")
	end
end


--waveInk, waveOut, fist, doubleTap, fingersSpread, rest and unknown. rest

function onPeriodic()
	--myo.debug(myo.getPitch())
	--myo.debug(myo.getYaw())
	--myo.debug(myo.getRoll())
end

function onForegroundWindowChange(app, title)
    --myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

--function onActiveChange(isActive)
    --myo.debug("onActiveChange")
--enda