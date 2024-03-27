use <modules.scad>

module front_panel(){
    vertical_support(Vertical_Supports_Width,Vertical_Supports_Depth,Vertical_Supports_Height);
    front_horizontal_supports(Vertical_Supports_Width, Horizontal_Supports_Width,
                           Horizontal_Supports_Depth, Horizontal_Supports_Height,
                           0.04, Horizontal_Supports_Distance+ Horizontal_Supports_Height+.04, Horizontal_Supports_Distance+ Horizontal_Supports_Height+.122);


}
front_panel();
