$fn=50;
module Flapper() {
  base = 0.0;
  length = 19.0;
  width = 19.0;
  thickness = 2.0;
  th2 = thickness/2.0;
  len_pin = 24.0;
  y1 = 11.5;
    union(){
      rotate([0.0,90.0,0.0])translate([-1.0,0.0,0.0])cylinder(r=th2,h=len_pin-th2);
      translate([2.0,0.0,0.0])cube([length,width,thickness]);
    };
};
Flapper();