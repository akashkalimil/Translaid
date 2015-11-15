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
		myo.debug("time")
		myo.keyboard("h","press")
	end
	if edge == "on" and pose == "waveIn" and pitch < .5 then
		myo.debug("Thank You")
		myo.keyboard("n","press")
	end
	if edge == "on" and pose == "waveOut" and pitch < .5 then
		myo.debug("Hello")
		myo.keyboard("a","press")
	end
	if edge == "on" and pose == "fist" and pitch > .5 then
		myo.debug("washroom")
		myo.keyboard("i","press")
	end
	if edge == "on" and pose == "waveIn" and pitch > .5 then
		myo.debug("food")
		myo.keyboard("c","press")
	end
	if edge == "on" and pose == "waveOut" and pitch > .5 then
		myo.debug("Do You Speak English")
		myo.keyboard("a","press")
	end
	if edge == "on" and pose == "fingersSpread" and pitch < .5 then
		myo.debug("How do I get?")
		myo.keyboard("k","press")
	end
	if edge == "on" and pose == "fingersSpread" and pitch > .5 then
		myo.debug("I need Help")
		myo.keyboard("d","press")
	end
	if edge == "on" and pose == "doubleTap" and pitch < .5 then
		myo.debug("bye")
		myo.keyboard("b","press")
	end
	if edge == "on" and pose == "doubleTap" and pitch > .5 then
		myo.debug("<3 digiflare")
		myo.keyboard("p","press")
	end
end


--waveIn, waveOut, fist, doubleTap, fingersSpread, rest and unknown. rest

function onPeriodic()
	--myo.debug(myo.getPitch())
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