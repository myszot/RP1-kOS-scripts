print "press any key for launch".
set l to terminal:input:getchar().
lock throttle to 1.
lock steering to heading (0, 90).

stage.
print "ignition".
wait .7.
wait until ship:thrust > 250.
stage.
print "liftoff".

wait until ship:verticalSpeed < -10.
stage. print "AP: "+ship:altitude.

wait 99999.