$fn=50;
module ValvePlate() {
  difference() {
    union(){
        cylinder(r=35, h=4);
        translate([22.0,-14.0,4.0])cube([3.0,28.0,10.0]);
        translate([-1.5,-14.0,4.0])cube([3.0,28.0,10.0]);
        translate([-25.0,-14.0,4.0])cube([3.0,28.0,10.0]);
        translate([-25.0,-15.5,4.0])cube([50.0,3.0,10.0]);
        translate([-25.0,12.5,4.0])cube([50.0,3.0,10.0]);
        
        translate([-22.5,-11.5,-0.1])cylinder(r=4, h=14.1);
        translate([-22.5,11.5,-0.1])cylinder(r=4, h=14.1);
        translate([22.5,-11.5,-0.1])cylinder(r=4, h=14.1);
        translate([22.5,11.5,-0.1])cylinder(r=4, h=14.1);

        translate([-12.0,-4.0,5.0])cylinder(r=4.5, h=3);
    };
    translate([-12.0,4.0,-0.1])cylinder(r=7.5, h=31);
    translate([12.0,4.0,-0.1])cylinder(r=7.5, h=31);

    translate([-12.0,-4.0,3.5])cylinder(r=7.5, h=3);

    translate([-22.5,-11.5,10.1])cylinder(r=1.4, h=4);
    translate([-22.5,11.5,10.1])cylinder(r=1.4, h=4);
    translate([22.5,-11.5,10.1])cylinder(r=1.4, h=4);
    translate([22.5,11.5,10.1])cylinder(r=1.4, h=4);
  };
};
ValvePlate();