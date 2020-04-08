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
    translate([-len2,-w2,base-0.01])cylinder(r=rm3large, h=height+0.02);
    translate([-len2,w2,base-0.01])cylinder(r=rm3large, h=height+0.02);
    translate([len2,-w2,base-0.01])cylinder(r=rm3large, h=height+0.02);
    translate([len2,w2,base-0.01])cylinder(r=rm3large, h=height+0.02);

  };
};
ValveBox();