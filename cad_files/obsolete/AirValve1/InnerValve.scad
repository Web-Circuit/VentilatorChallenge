$fn=50;
module InnerValve() {
    union(){
        cylinder(r=10.5, h=2);
        translate([0.0,0.0,1.0])cylinder(r=4.5, h=4);
  };    
};
InnerValve();