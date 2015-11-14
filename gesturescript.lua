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

function onPoseEdge(pose, edge)
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
end

function onPeriodic()
end

function onForegroundWindowChange(app, title)
    --myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

function onActiveChange(isActive)
    myo.debug("onActiveChange I'm joel")
end
