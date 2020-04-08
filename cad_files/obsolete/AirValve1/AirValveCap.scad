$fn=50;
use <threads.scad>;
module AirValveCap() {
    union(){
    difference() {
      union() {
        cylinder(r=13.5, h=10);
      };
      {
        translate([0.0,0.0,-0.1])cylinder(r=11.5, h=8);
        metric_thread(diameter=25.5, pitch=4.0, thread_size=3, length=20, n_starts=4, internal=true, square=true);
      };
    };
        translate([0.0,0.0,9.9])cylinder(r=13.5, h=2);
        translate([0.0,0.0,4.1])cylinder(r=4.5, h=4);
  };    
};
AirValveCap();