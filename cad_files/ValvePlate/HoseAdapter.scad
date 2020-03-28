$fn=50;
module HoseAdapter() {
  union() {
   difference() {
    union(){
        translate([-25.0,-14.0,0.0])cube([50.0,28.0,3.0]);
        translate([-12.0,0.0,3.0])cylinder(r=9, h=25);
        translate([12.0,4.0,3.0])cylinder(r=9, h=25);

    };
    translate([-12.0,0.0,-0.1])cylinder(r=7.5, h=31);
    translate([12.0,4.0,-0.1])cylinder(r=7.5, h=31);

    translate([12.0,-4.0,-0.1])cylinder(r=7.5, h=1.5);

    translate([-22.5,-11.5,-0.1])cylinder(r=1.6, h=4);
    translate([-22.5,11.5,-0.1])cylinder(r=1.6, h=4);
    translate([22.5,-11.5,-0.1])cylinder(r=1.6, h=4);
    translate([22.5,11.5,-0.1])cylinder(r=1.6, h=4);
   };
  translate([12.0,-4.0,0.0])cylinder(r=4.5, h=1.5);
  };
};
HoseAdapter();