$fn=50;
include <params.scad>; 
module ValveBox() {
  difference() {
    union(){
        translate([len2-thickness,-w2,base])cube([2.0*thickness,width,height]);
        translate([-th2,-w2,base])cube([thickness,width,height]);
        translate([-len2-thickness,-w2,base])cube([2.0*thickness,width,height]);
        translate([-len2,-w2-thickness,base])cube([length,2.0*thickness,height]);
        translate([-len2,w2-thickness,base])cube([length,2.0*thickness,height]);
        
        translate([-len2,-w2,base])cylinder(r=3, h=height);
        translate([-len2,w2,base])cylinder(r=3, h=height);
        translate([len2,-w2,base])cylinder(r=3, h=height);
        translate([len2,w2,base])cylinder(r=3, h=height);
    };
    translate([-len2,-w2,height-scdepth+0.01])cylinder(r=rm3small, h=scdepth);
    translate([-len2,w2,height-scdepth+0.01])cylinder(r=rm3small, h=scdepth);
    translate([len2,-w2,height-scdepth+0.01])cylinder(r=rm3small, h=scdepth);
    translate([len2,w2,height-scdepth+0.01])cylinder(r=rm3small, h=scdepth);
    
    translate([-len2,-w2,base-0.01])cylinder(r=rm3small, h=scdepth);
    translate([-len2,w2,base-0.01])cylinder(r=rm3small, h=scdepth);
    translate([len2,-w2,base-0.01])cylinder(r=rm3small, h=scdepth);
    translate([len2,w2,base-0.01])cylinder(r=rm3small, h=scdepth);

        hull() {
          rotate([0.0,90.0,0.0])translate([0.0,9.0,0.0])cylinder(r=1,h=len2-th2);
          rotate([0.0,90.0,0.0])translate([-1.0,9.0,0.0])cylinder(r=1,h=len2-th2);
        };
        hull() {
          rotate([0.0,90.0,0.0])translate([-height,9.0,-len2+th2])cylinder(r=1,h=len2-th2);
          rotate([0.0,90.0,0.0])translate([-(height-1.0),9.0,-len2+th2])cylinder(r=1,h=len2-th2);
        };

  };
};
ValveBox();