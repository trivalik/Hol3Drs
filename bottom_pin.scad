// This is the bottom pin which is used to mount the sample holders into the machines.
// Since we use this for most of our models, it makes sense to have a small 'template' which we can just add the model where it's needed...
// To do so, add a line with "use<bottom_pin.scad>"
// And then just call "pin();" wherever you need the pin :)
$fn=100;
module pin(diameter=6.15, height=20, cap_depth=2)
{
    translate([0,0,-height]) difference(){
        cylinder(d=diameter,h=height);
        cylinder(d=diameter-2,h=height-cap_depth);
    }
}
pin();