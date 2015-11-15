scriptId = 'com.thalmic.examples.gesturescript'
scriptTitle = "Gesture script"
scriptDetailsUrl = ""

myo.setLockingPolicy("none")

rolling = 0


function onPoseEdge(pose, edge)
    --myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    
    pitch = myo.getPitch()
    roll = myo.getRoll()
    yaw = myo.getYaw()
    pi = math.pi
    if edge == "on" then
    	--myo.debug("roll is: ".. myo.getRoll())
		--myo.debug("pitch is: ".. myo.getPitch())
		--myo.debug("yaw is: ".. myo.getYaw())
    	if pose == "waveOut" and pitch > pi/3 then
    		myo.debug("do you speak english")
    	elseif pose == "waveOut" and pitch < pi/3 then
    		myo.debug("hello")
    	elseif pose == "waveIn" and pitch > pi/3 then
    		myo.debug("food")
    	elseif pose == "waveIn" and pitch < pi/3 then
    		myo.debug("thank you")
    	elseif pose == "fist" and pitch > pi/3 then
    		myo.debug("washroom?")
    	elseif pose == "fist" and pitch < pi/3 then
    		myo.debug("time")
    	elseif pose == "fingersSpread" and pitch > pi/3 then
    		myo.debug("I need help")
		elseif pose == "fingersSpread" and pitch < pi/3 then
    		myo.debug("how much?")
    	elseif pose == "doubleTap" and pitch > pi/3 then
    		myo.debug("I love digiflare")
    	elseif pose == "doubleTap" and pitch < pi/3 then
    		myo.debug("public transportation")
    			
    	end
    end
    rolling = 0
end

--[[
function onPoseEdge(pose, edge)
    --myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    
    pitch = myo.getPitch()
    roll = myo.getRoll()
    yaw = myo.getYaw()
    pi = math.pi
    if edge == "on" then
    	--myo.debug("roll is: ".. myo.getRoll())
		--myo.debug("pitch is: ".. myo.getPitch())
		--myo.debug("yaw is: ".. myo.getYaw())
    		local initroll = myo.getRoll();
    		if pose == "doubleTap" and pitch > 1 then
    			myo.debug("I Love digiflare")
    		elseif pose == "waveOut" and yaw > pi/4 then
    			myo.debug("Do you speak English")
    		elseif pose == "waveOut" and pitch < pi/4 then
    			myo.debug("HELLO")
    		elseif pose == "fingersSpread" and pitch < pi/4 and roll < -pi/2 then
    			myo.debug("how do i get")
    		elseif pose == "fingersSpread" and pitch > pi/4 then
    			myo.debug("Hospital")
    		elseif pose == "waveIn" and pitch > pi/4 then
    			myo.debug("FOOD")
    		elseif pose == "waveIn" and pitch < pi/4 then
    			myo.debug("Thank you")
    		elseif pose == "fist" and pitch < pi/4 then
    			myo.debug("what time is it?")
    		elseif pose == "fist" and pitch > pi/4 and rolling  then
    			myo.debug("bathroom")
    			rolling = 0
    		elseif pose == "fist" and pitch > pi/4 then
    			myo.debug("BYE")
    		elseif pose == "doubleTap" and pitch < pi/4 then
    			myo.debug("water")
    		elseif pose == "doubleTap" and -1.5 > pitch then
    			myo.debug("police")
    		elseif pose == "fist" and -1.5 > pitch then
    			myo.debug("Public transport f ")
    		elseif pose == "fingersSpread" and pitch < pi/4 and roll < pi/2 then
    			myo.debug("how much g")
    	    end
    	
    end
    rolling = 0
end

--]]

--waveIn, waveOut, fist, doubleTap, fingersSpread, rest and unknown. rest

function onPeriodic()
	--myo.debug("roll is: ".. myo.getRoll())
	--myo.debug("pitch is: ".. myo.getPitch())
	--myo.debug("yaw is: ".. myo.getYaw())
	--[[
	initroll = myo.getRoll();
	if myo.getPitch() > math.pi/4 then
		if initroll > 0 then
			if myo.getRoll() < 0 then
				rolling = 1
			end
		elseif initroll < 0 then
			if myo.getRoll() > 0 then
				rolling = 1
			end
		end
		--myo.debug(rolling)
	else 
		--myo.debug(rolling)
		rolling = 0
	end
	--]]
	
end

function onForegroundWindowChange(app, title)
   -- myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

function onActiveChange(isActive)
	--myo.debug("Can i use ur phone?")
end

