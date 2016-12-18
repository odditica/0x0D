///timer_create(t)
var a = instance_create(0, 0, objTimer);
a.t = global.globTimer + argument[0];
a._id = global.timerCount;
global.timerCount ++;
global.globTimer += argument[0];
if (argument_count == 2){
   a._id = argument[1];
}
return a;
