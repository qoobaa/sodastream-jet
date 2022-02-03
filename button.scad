$fn=100;

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
