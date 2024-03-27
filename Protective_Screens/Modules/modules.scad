module vertical_support(Vertical_Supports_Width,Vertical_Supports_Depth,Vertical_Supports_Height){
    cube([Vertical_Supports_Width,
          Vertical_Supports_Depth,
          Vertical_Supports_Height]);
}

module vertical_supports(Vertical_Supports_Width, Vertical_Supports_Depth, Vertical_Supports_Height, Vertical_Supports_Distance=0){
    cube([Vertical_Supports_Width,
          Vertical_Supports_Depth,
          Vertical_Supports_Height]);

    translate([Vertical_Supports_Distance,0,0])
        cube([Vertical_Supports_Width,
              Vertical_Supports_Depth,
              Vertical_Supports_Height]);

}

module horizontal_supports(Vertical_Supports_Width, Horizontal_Supports_Width,
                           Horizontal_Supports_Depth, Horizontal_Supports_Height,
                           Vertical_Translate=0, Second_Vertical_Translate=0){

    translate([Vertical_Supports_Width,0, Vertical_Translate])
        cube([Horizontal_Supports_Width,
              Horizontal_Supports_Depth,
              Horizontal_Supports_Height]);


    translate([Vertical_Supports_Width,0,Second_Vertical_Translate])
        cube([Horizontal_Supports_Width, Horizontal_Supports_Depth, Horizontal_Supports_Height]);
}

module horizontal_supports_with_groove(Vertical_Supports_Width, Horizontal_Supports_Width,
                           Horizontal_Supports_Depth, Horizontal_Supports_Height,
                           Horizontal_Support_Groove_Depth, Horizontal_Support_Groove_Width,
                           Horizontal_Support_Groove_Distance, Horizontal_Support_Groove_Height,
                           Vertical_Translate=0, Second_Vertical_Translate=0) {
    difference() {
        horizontal_supports(Vertical_Supports_Width, Horizontal_Supports_Width,
        Horizontal_Supports_Depth, Horizontal_Supports_Height,
        Vertical_Translate, Second_Vertical_Translate);
        translate([Vertical_Supports_Width, Horizontal_Supports_Depth - Horizontal_Support_Groove_Depth,
            Horizontal_Support_Groove_Distance])cube([Horizontal_Support_Groove_Width, Horizontal_Support_Groove_Depth,
            Horizontal_Support_Groove_Height]);
    }
}

module front_horizontal_supports(Vertical_Supports_Width, Horizontal_Supports_Width,
                           Horizontal_Supports_Depth, Horizontal_Supports_Height,
                           Vertical_Translate=0, Second_Vertical_Translate=0, Third_Vertical_Translate=0){
    horizontal_supports(Vertical_Supports_Width, Horizontal_Supports_Width,
                           Horizontal_Supports_Depth, Horizontal_Supports_Height,
                           Vertical_Translate, Second_Vertical_Translate);
    translate([Vertical_Supports_Width,0,Third_Vertical_Translate])
        cube([Horizontal_Supports_Width, Horizontal_Supports_Depth, Horizontal_Supports_Height]);


}


module slats(Slat_Dist, Horizontal_Supports_Distance, Vertical_Supports_Width, Vertical_Translate,
             Slat_Rotation, Slats_Width,Slats_Depth,Slats_Height, Horizontal_Supports_Depth,
             Corner_x,Corner_y,Corner_z,corner_piece){
//    slate_dist = Horizontal_Supports_Distance/Slats_Number;

    difference(){
    union()
    {for (i = [0:Slat_Dist:Horizontal_Supports_Distance-Slat_Dist])
        translate([Vertical_Supports_Width,0,Vertical_Translate+i])rotate([Slat_Rotation,0,0])cube([Slats_Width,Slats_Depth,Slats_Height]);
    }

    translate([Corner_x,Corner_y,Corner_z])
        linear_extrude(height = Horizontal_Supports_Distance)polygon(corner_piece);
}

}


module floor_panel(Floor_Width, Floor_Depth, Floor_Height, Floor_Gap,
                   Corner_Cutout_Width, Corner_Cutout_Height, Vertical_Translate){
    difference(){
        translate([0,0,Vertical_Translate])cube([Floor_Width, Floor_Depth, Floor_Height]);
        translate([0,0,Vertical_Translate])cube([Corner_Cutout_Width, Corner_Cutout_Height, Floor_Height]);

    }

    difference(){
        translate([0,Floor_Gap+Floor_Depth,Vertical_Translate])cube([Floor_Width, Floor_Depth, Floor_Height]);
        translate([0,Floor_Gap+2*Floor_Depth-Corner_Cutout_Height,Vertical_Translate])cube([Corner_Cutout_Width, Corner_Cutout_Height, Floor_Height]);

    }
}

module floor_center_panel(Floor_Center_Width, Floor_Center_Depth, Floor_Center_Height, Floor_Gap, Vertical_Translate){
    difference(){
        cube([Floor_Center_Width, Floor_Center_Depth, Floor_Center_Height])
    }
}
