$fn=50;
module button(buttonheight,buttonlength)
    translate(buttontrans)
    rotate(buttonrot)
        cylinder(h=buttonheight,r=buttonlength);
buttontrans=[16,0,20];
buttonrot=[0,90,0];
spheresize=20;
sphererot=[0,90,0];
spheretrans=[0,0,20];
cubesize=40;
   difference() {
    translate(spheretrans)
        sphere(spheresize);
    translate([0,0,0.8])
        cube(cubesize,center=true);
    translate(buttontrans)
    rotate(sphererot)
        cylinder(h=4,r=6);
    }
    difference() {
    translate(spheretrans)
        sphere(spheresize);
    translate([0,0,39.2])
        cube(cubesize,center=true);
    translate(buttontrans)
    rotate(sphererot)
        cylinder(h=4,r=6);
    }
    difference() {
    translate([0,0,18])
        cylinder(h=4,r=18);
    translate([0,20,20])
    rotate([90,0,0])
        cylinder(h=40,r=2);
        
    }
    button(2.8,4);
    button(3.2,3.6);
    button(3.8,3.2);
    difference() {
    translate([0,0,40.8])
    rotate([0,90,0])
        linear_extrude(height=2) {
            square(5,center=true);
        }    
    translate([0,0,41.5])
    rotate([0,90,0])
        cylinder(h=4,r=1);
    }
