$fn=50;
include <params.scad>;
module ValvePlate() {
  difference() {
    hull(){
        translate([-20.0,0.0,0.0])cylinder(r=20, h=th_plate);
        translate([20.0,0.0,0.0])cylinder(r=20, h=th_plate);
    };
    translate([-12.0,2.0,-0.01])cylinder(r=7.5, h=5);
    translate([12.0,2.0,-0.01])cylinder(r=7.5, h=5);

    translate([-len2,-w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([-len2,w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([len2,-w2,base-0.01])cylinder(r=rm3large, h=scdepth);
    translate([len2,w2,base-0.01])cylinder(r=rm3large, h=scdepth);

  };
};
ValvePlate();