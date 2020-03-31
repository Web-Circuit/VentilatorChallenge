$fn=50;
include <params.scad>;
module DiskValve() {
  base = 0.0;
  dv_thick = 2.0;
    difference(){
      cylinder(r1=8.5, r2=6.5, h=dv_thick);
      translate([0.0,0.0,-0.01])cylinder(r=rm3large,h=dv_thick+0.02);
    };
};
DiskValve();