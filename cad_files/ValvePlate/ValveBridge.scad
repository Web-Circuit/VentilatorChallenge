$fn=50;
include <params.scad>;
module DiskValve() {
  base = 0.0;
  dv_thick = 2.0;
    difference(){
      union() {
        cylinder(r=7.5, h=dv_thick);
        cylinder(r=2.5, h=5.0);
        difference(){
          translate([0.0,0.0,dv_thick])cylinder(r=8.5, h=dv_thick);
          translate([0.0,0.0,dv_thick+0.001])cylinder(r=6.5, h=dv_thick);
        };
      };
      translate([0.0,0.0,-0.01])cylinder(r=rm3large,h=5.02);
      
      translate([-8.5,2.0,-0.02])cube([7.0,7.0,5.0]);
      translate([-8.5,-9.0,-0.02])cube([7.0,7.0,5.0]);
      translate([2.0,2.0,-0.02])cube([7.0,7.0,5.0]);
      translate([2.0,-9.0,-0.02])cube([7.0,7.0,5.0]);
    };
};
DiskValve();