$fn=100;

/* #translate([-50,-18.42,-16]) Handle(); */

module Handle() {
  difference()
    {
      cube([87,36.84,14.3]);
      translate([6.25,3.5,7.5])   // left side removal.
        cube([12.5,7,15],center=true);
      translate([12,-13,7.5])
        cylinder(h=15,r=20,center=true);
      translate([6.25,33.34,7.5]) // right side removal.
        cube([12.5,7,15],center=true);
      translate([12,49.84,7.5])
        cylinder(h=15,r=20,center=true);
      translate([112,18.42,-235]) // underside removal.
        rotate([90,0,0])
        cylinder(h=40,r=250,center=true);
      translate([6,18.42,8])      // curved end at hinge.
        difference()
        {
          translate([-4,0,4])cube([8,24,8],center=true);
          rotate([90,0,0])
            cylinder(h=24,r=6.63,center=true);
        }
      translate([6,18.42,5.5])   // hinge space removal.
        cube([14,18.25,11],center=true);
      translate([6,18.42,8])      // hinge cylinder space.
        rotate([90,0,0])
        cylinder(h=18.25,r=5.63,center=true);
      ValveShaftSpace();
      translate([6,18.42,8])      //Roll Pin hole.
        rotate([90,0,0])
        cylinder(h=40,r=1.67,center=true);
      difference()               // bottom center slot removal.
        {
          polyhedron(
                     points=[
                             [20,10.42,0  ],[20,26.42,0  ]
                             ,[20,13.42,7.8],[20,23.42,7.8]
                             ,[55,13.42,7.8],[55,23.42,7.8]
                             ,[55,10.42,0  ],[55,26.42,0  ]]
                     ,faces=[
                             [0,2,4],[4,6,0],[1,7,5],[5,3,1]
                             ,[1,3,2],[2,0,1],[6,4,5],[5,7,6]
                             ,[3,5,4],[4,2,3],[0,6,7],[7,1,0]],convexity=2);
          translate([33.67,18.42,5.3]) // Spring pin.
            cube([5.25,1.4,5],center=true);
          translate([33.67,18.42,5.3])
            cube([1.4,5.25,5],center=true);
        }
      difference()               // curved end of bottom slot.
        {                          // It's a quarter cone shape.
          translate([20,18.42,3.9])
            cylinder(h=7.8,r1=8,r2=5,center=true);
          translate([20+4,18.42,3.9])cube([8,8,7.9],center=true);
        }
      translate([0,0,-0.1])rotate([0,0.692,0])
        cube([12.5,36.84,0.2]);
      translate([12.2411,0,0.306-0.5])rotate([0,4.5,0])
        cube([38.7,36.84,2.26+0.60187]);
    }
  difference()
    {
      translate([87,18.42,14])Button();
      translate([112,18.42,-235]) // underside removal.
        rotate([90,0,0])
        cylinder(h=45,r=250,center=true);
    }
}

module ValveShaftSpace()
{
  difference()
    {
      translate([16.12,18.42,5.15])
        cube([7,35,10.3],center=true);
      translate([12,-13,5.15])
        cylinder(h=10.3,r=22.33,center=true);
      translate([12,49.84,5.15])
        cylinder(h=10.3,r=22.33,center=true);
      translate([20,18.42,8])
        cylinder(h=4,r=5,center=true);
    }
}

module Button()
{
  scale([1,1.67,1])
    {
      translate([0,0,0.5])difference() // Button Base.
        {
          cylinder(h=13.5,r=13.1,center=true);
        }
      translate([0,0,8])
        difference() // Button Body.
        {
          cylinder(h=5,r=11.3,center=true);
          cylinder(h=5,r=9.35,r2=9.25,center=true);
        }
      translate([0,0,10.5])
        difference() // Button Top.
        {
          sphere(r=11.3,center=true);
          translate([0,0,13.63])scale([1,1.389543,1])
            sphere(r=3.25,center=true);
          translate([0,0,-2.4])
            sphere(r=9.3,center=true);
          translate([0,0,-14.45])
            cylinder(h=28,r=13.1,r2=9.25,center=true);
        }
    }
}

difference() {
  hull() {
    rotate([90, 0, 0]) translate([-44, -8, -24/2]) cylinder(24, 13/2, 13/2);
    translate([37, 0, -0.5]) cube([1, 38, 3], center=true);
  }

  hull() {
    rotate([90, 0, 0]) translate([-44, -8, -18/2]) cylinder(18, 11/2, 11/2);
    rotate([90, 0, 0]) translate([-38, -14, -18/2]) cylinder(18, 11/2, 11/2);
  }

  // shaft
  rotate([90, 0, 0]) translate([-44, -8, -50]) cylinder(100, 3.5/2, 3.5/2);
  translate([-28, 0, -13.5]) cube([100, 18, 10], center=true);
}

// button
translate([37, 0, -2]) scale([1, 1.675, 1]) {
  translate([0, 0, 14]) cylinder(1, 22/2, 20/2);
  translate([0, 0, 8]) cylinder(6, 22/2, 22/2);
  translate([0, 0, 7]) cylinder(1, 26/2, 22/2);
  cylinder(7, 26/2, 26/2);
}

translate([-16.5, 0, -8]) {
  cube([2, 5, 7], center=true);
  cube([5, 2, 7], center=true);
}
