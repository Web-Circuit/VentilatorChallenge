$fn=50;
include <params.scad>; 
module HoseAdapter() {
  union() {
   difference() {
    union(){
        translate([-len2,-w2,base])cube([length,width,ha_thick]);

        translate([-len2,-w2-3.0,base])cube([length,3.0,ha_thick]);
        translate([-len2,w2,base])cube([length,3.0,ha_thick]);
        translate([-len2-3.0,-w2,base])cube([3.0,width,ha_thick]);
        translate([len2,-w2,base])cube([3.0,width,ha_thick]);

        translate([-12.0,2.0,ha_thick])cylinder(r=9, h=24);
        translate([12.0,2.0,ha_thick])cylinder(r=9, h=24);

        translate([-len2,-w2,base])cylinder(r=3, h=ha_thick);
        translate([-len2,w2,base])cylinder(r=3, h=ha_thick);
        translate([len2,-w2,base])cylinder(r=3, h=ha_thick);
        translate([len2,w2,base])cylinder(r=3, h=ha_thick);

    };
    translate([-12.0,2.0,-0.01])cylinder(r=7.5, h=28.02);
    translate([12.0,2.0,-0.01])cylinder(r=7.5, h=28.02);

    translate([-len2,-w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([-len2,w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([len2,-w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
    translate([len2,w2,base-0.01])cylinder(r=rm3large, h=ha_thick+0.02);
   };
  };
};
HoseAdapter();