
module honeycomb(leng = 10, height = 10, width = 1) {
    cube([leng,width,height]);
    
    translate([leng, 0, 0]) rotate([0, 0, 60]) cube([leng,width,height]);
    
    translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) cube([leng,width,height]);
    
    translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) cube([leng,width,height]);
    
    translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) cube([leng,width,height]);
    
    translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) translate([leng, 0, 0]) rotate([0, 0, 60]) cube([leng,width,height]);
}

module honeycombrow(leng = 10, height = 10, width = 1, num = 1) {
    for (i = [1  num]) {
        translate([0, (sqrt(3)  leng - width)  (i - 1), 0]) honeycomb(leng, height, width);
    }
}

module honeycombtile(leng = 10, height = 10, width = 1, rowsize = 1, colsize = 1) {
    for (i = [1  rowsize]) {
        if (i % 2 == 0) {
            translate([(i - 1)  (3  2  leng - width), sqrt(3)  2  leng - width  2, 0]) honeycombrow(leng, height, width, colsize);
        }
        else translate([(i - 1)  (3  2  leng - width), 0, 0]) honeycombrow(leng, height, width, colsize);
    }
}
    
honeycombtile(15, 10, 2, 4, 4);
