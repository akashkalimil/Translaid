scriptId = 'com.thalmic.examples.gesturescript'
scriptTitle = "Gesture script"
scriptDetailsUrl = ""

myo.setLockingPolicy("none")

function onPoseEdge(pose, edge)
    --myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    pitch = myo.getPitch()
    roll = myo.getRoll()
    pi = math.pi
    if edge == "on" then
    		if pose == "waveOut" and pitch > pi/6 then
    			myo.debug("upHELLO")
    		elseif pose == "waveOut" and pitch < pi/6 then
    			myo.debug("downHELLO")
    		elseif pose == "fingersSpread" and pitch < pi/6 and roll < -pi/2 then
    			myo.debug("How much?")
    		elseif pose == "waveIn" and pitch > pi/6 then
    			myo.debug("greater than 45 detected")
    				myo.debug("FOOD")
    		elseif pose == "fist" and pitch < pi/6 then
    			myo.debug("fist")
    		elseif pose == "doubleTap" and pitch > pi/6 then
    			myo.debug("dt")
    	    end
    	
    end
end


--waveIn, waveOut, fist, doubleTap, fingersSpread, rest and unknown. rest

function onPeriodic()
	--myo.debug("roll is: ".. myo.getRoll())
	--myo.debug("pitch is: ".. myo.getPitch())
	--myo.debug("yaw is: ".. myo.getYaw())
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
--end

