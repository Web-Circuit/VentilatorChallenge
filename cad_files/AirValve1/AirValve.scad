$fn=50;
module AirValve() {
    difference() {
      union() {
        cylinder(r=9, h=25);
        translate([0.0,0.0,6.0])cylinder(r=11, h=30);
        translate([0.0,11.0,33.0])sphere(r=2);
        translate([11.0,0.0,33.0])sphere(r=2);
        translate([0.0,-11.0,33.0])sphere(r=2);
        translate([-11.0,0.0,33.0])sphere(r=2);
        rotate([90.0,0.0,0.0])translate([0.0,15.5,-3.0])cylinder(r=9.0, h=26);
      };
      {
        translate([0.0,0.0,8.0])cylinder(r=9.5, h=31);
        translate([0.0,0.0,-0.1])cylinder(r=7.5, h=31);
        // exit hole
        rotate([90.0,0.0,0.0])translate([0.0,15.5,2.0])cylinder(r=7.5, h=26);
      };
    }
};
AirValve();