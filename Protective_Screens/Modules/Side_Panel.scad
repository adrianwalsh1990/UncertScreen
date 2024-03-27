
use <modules.scad>


module side_panel(){
    vertical_supports(Vertical_Supports_Width, Vertical_Supports_Depth, Vertical_Supports_Height, Vertical_Supports_Distance);
    horizontal_supports_with_groove(Vertical_Supports_Width,Horizontal_Supports_Width,
                        Horizontal_Supports_Depth,Horizontal_Supports_Height,Horizontal_Support_Groove_Depth, Horizontal_Support_Groove_Width, Horizontal_Support_Groove_Distance, Horizontal_Support_Groove_Height,
                        0, Horizontal_Supports_Distance+ Horizontal_Supports_Height);
    slats(Slat_Dist, Horizontal_Supports_Distance, Vertical_Supports_Width, Horizontal_Supports_Height,
             Slat_Rotation, Slats_Width,Slats_Depth,Slats_Height, Horizontal_Supports_Depth,
          Vertical_Supports_Width+Horizontal_Supports_Distance,Horizontal_Supports_Depth,Horizontal_Supports_Height, [[0.00751,0],[0,0.00751],[0.00751,0.00751]]);

}
side_panel();
