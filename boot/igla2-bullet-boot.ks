wait until ship:unpacked.
core:doevent("Open Terminal").
set name to "igla2-bullet".

clearscreen.
print "BOOTING INTO " + name + ".ks".

cd("1:/boot/").
deletePath("1:/boot/"+name+"-boot.ks").
cd("1:/").

copyPath("0:/"+name+".ks", "1:/").
runPath("1:/"+name+".ks").