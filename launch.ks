clearscreen.

print "press a key for launch" at (0,0).
set lol to terminal:input:getchar().
set lol to lol.  // so compiler doesnt complain abt unused var lol

lock throttle to 1.

wait 5.

stage.

until ship:availablethrust > 0 {
    wait 0.
}

stage.
