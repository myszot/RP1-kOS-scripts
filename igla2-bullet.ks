print "press any key for launch".
set l to terminal:input:getchar().
lock throttle to 1.

stage.
print "ignition".
wait .7.
wait until ship:thrust > 10.
stage.
print "liftoff".

wait 4. stage.
print "booster sep".

wait until ship:thrust <= 0.
print "MECO".

wait 15.

stage. print "stage sep".
wait .7.
stage. print "SES".

wait 99999.