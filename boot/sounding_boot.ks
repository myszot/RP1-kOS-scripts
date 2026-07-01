
print "press a key for launch" at (0,0).
set lol to terminal:input:getchar().
lock throttle to 1.

wait 5.
stage.
print "ignition".

wait 0.5.

until ship:thrust > 0 {wait 0.}
stage.
print "liftoff".

wait 999.