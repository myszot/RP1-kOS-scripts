print "press any key for launch".
set l to terminal:input:getchar().
lock throttle to 1.
lock steering to heading (0, 90).

set target_normal to v(0, 0, 1).
set A to 1.
set B to -0.005.

stage.
print "ignition".
wait .7.
wait until ship:thrust > 250.
stage.
print "liftoff".

set liftoff_t to time:seconds.
lock T to time:seconds - liftoff_t.

set fwd to vectorCrossProduct(up:vector, target_normal). 
set fwd to fwd / fwd:mag.

set theta to constant:pi / 2 + B * T.
set steer_dir to fwd * cos(theta) + up:vector * sin(theta).

lock steering to lookdirup(steer_dir:normalized, ship:facing:topvector). 

wait until ship:verticalSpeed < -10.
unlock steering.
stage.
print "AP: "+ship:altitude.

wait 99999.