//Print TPU
// Fill dencity = 30%
// Layer Height = 0.22mm
// Perimeters, top, bottom = 3 

//Print PLA
$fn=100;

rotate([180,0,0])pla_ball();

module pla_ball(){
    difference(){
        union(){
            sphere(d=14,$fn=$fn/2);
            translate([0,0,4.3])cylinder(d=20,h=0.2,$fn=$fn/2);
        }
        translate([0,0,-2])cylinder(d=10.7,h=10,$fn=$fn/2);
        translate([0,0,-7.2])cylinder(d=3,h=5,$fn=$fn/4);
        translate([0,0,-10.5])cylinder(d=5.2,h=5,$fn=$fn/3);
        translate([0,0,-5.5])cylinder(d1=5.2,d2=2.9,h=1,$fn=$fn/3);
    }
}

module tpu_holder(){
    intersection(){
        difference(){
            cylinder(d=30,h=9,$fn=$fn/2);

            difference(){
                translate([-25,-25,0])cube([50,50,10]);
                translate([0,0,-36])scale([1,0.8,1])sphere(d=90);
            }

            difference(){
                translate([-25,-25,0])cube([50,50,10]);
                translate([18.13,0,-25.73])sphere(d=80);
            }
            translate([-1,0,6])sphere(d=14.1,$fn=$fn/2);

        }
        translate([-25,-16.5/2,0])cube([50,16.5,10]);
        translate([0,0,6]){
            scale([1,1.2,1])sphere(d=30,$fn=$fn/2);
            translate([-50,-25,-25])cube([50,50,50]);
        }
        translate([11.2,0,-34.7])sphere(d=90);
    }
}