use <modules.scad>

module full_floor(){
    floor_panel(Floor_Width, Floor_Depth, Floor_Height, Floor_Gap, Corner_Cutout_Width, Corner_Cutout_Height, 0.022);
    floor_center_panel(Floor_Center_Width, Floor_Center_Depth, Floor_Center_Height, Floor_Gap, Center_Height + 0.022);

}

full_floor();
