$fn=50;
include <params.scad>; 
module HoseManifold() {
  union() {
   difference() {
    union(){
        translate([-len2,-w2,base])cube([length,width,ha_thick]);

        translate([-len2,-w2-3.0,base])cube([length,3.0,ha_thick]);
        translate([-len2,w2,base])cube([length,3.0,ha_thick]);
        translate([-len2-3.0,-w2,base])cube([3.0,width,ha_thick]);
        translate([len2,-w2,base])cube([3.0,width,ha_thick]);

        translate([-len2,-w2,base])cylinder(r=3, h=ha_thick);
        translate([-len2,w2,base])cylinder(r=3, h=ha_thick);
        translate([len2,-w2,base])cylinder(r=3, h=ha_thick);
        translate([len2,w2,base])cylinder(r=3, h=ha_thick);
        for (zm = [0:1:120]) {
          translate([-12.0+0.1*zm,2.0,zm*0.2+ha_thick])cylinder(r=9, h=0.2);
          translate([12.0-0.1*zm,2.0,zm*0.2+ha_thick])cylinder(r=9, h=0.2);
        };
        translate([0.0,2.0,24.0+ha_thick])cylinder(r=9, h=12.0);
    };
    translate([-12.0,2.0,-0.01])cylinder(r=7.5, h=ha_thick+0.01);
    translate([12.0,2.0,-0.01])cylinder(r=7.5, h=ha_thick+0.01);
    for (zm = [0:1:121]) {
        translate([-12.0+0.1*zm,2.0,zm*0.2+ha_thick-0.01])cylinder(r=7.5, h=0.2);
        translate([12.0-0.1*zm,2.0,zm*0.2+ha_thick-0.01])cylinder(r=7.5, h=0.2);
    };
    translate([0.0,2.0,24.0+ha_thick-0.05])cylinder(r=7.5, h=12.1);

    translate([-len2,-w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([-len2,w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([len2,-w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([len2,w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
   };
  };
};
HoseManifold();