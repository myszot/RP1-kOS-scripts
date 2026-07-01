print "press any key for launch".
set _ to terminal:input:getchar().
lock throttle to 1.

stage.
print "ignition".
wait .7.
wait until ship:thrust > 10.
stage.
print "liftoff".
