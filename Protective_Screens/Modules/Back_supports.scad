use <modules.scad>

module back_panel(){
    vertical_support(Vertical_Supports_Width,Vertical_Supports_Depth,Vertical_Supports_Height);
    horizontal_supports(Vertical_Supports_Width,Horizontal_Supports_Width,
                        Horizontal_Supports_Depth, Horizontal_Supports_Height,
                        0.04, Horizontal_Supports_Distance+ Horizontal_Supports_Height+.04);
    slats(Slat_Dist, Horizontal_Supports_Distance, Vertical_Supports_Width, Horizontal_Supports_Height+0.04,
             Slat_Rotation, Slats_Width,Slats_Depth,Slats_Height, Horizontal_Supports_Depth,
        Vertical_Supports_Width,Horizontal_Supports_Depth,Horizontal_Supports_Height,
        [[0,0],[0,0.00751],[0.00751,0.00751]]);

}

back_panel();
