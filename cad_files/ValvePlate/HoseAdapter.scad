$fn=50;
include <params.scad>; 
module HoseAdapter() {
  union() {
   difference() {
    union(){
        translate([-25.0,-14.0,0.0])cube([50.0,28.0,3.0]);
        translate([-14.0,4.0,3.0])cylinder(r=9, h=24);
        translate([14.0,4.0,3.0])cylinder(r=9, h=24);

        translate([-len2,-w2,base])cylinder(r=3, h=3.0);
        translate([-len2,w2,base])cylinder(r=3, h=3.0);
        translate([len2,-w2,base])cylinder(r=3, h=3.0);
        translate([len2,w2,base])cylinder(r=3, h=3.0);

    };
    translate([-14.0,4.0,-0.01])cylinder(r=7.5, h=27.02);
    translate([14.0,4.0,-0.01])cylinder(r=7.5, h=27.02);

    translate([-len2,-w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([-len2,w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([len2,-w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([len2,w2,base-0.01])cylinder(r=rm3large, h=scdepth);
   };
  };
};
HoseAdapter();