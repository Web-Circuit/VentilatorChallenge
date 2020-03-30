$fn=50;
include <params.scad>;
use <ValvePlate.scad>;
use <ValveBox.scad>;
module ValvePlateBox() {
  rotate([0.0,0.0,180.0])ValvePlate();
  translate([0.0,0.0,th_plate])ValveBox();
};
ValvePlateBox();