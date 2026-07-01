print "press any key for launch" at (0,0).
set l to terminal:input:getchar().
lock throttle to 1.

stage.
print "liftoff".

wait 5. stage.
print "booster sep".

until ship:thrust <= 0 {wait 0.}

print "MECO".

wait 15.

stage.
wait .7.
stage.
print "SES".

wait 99999.