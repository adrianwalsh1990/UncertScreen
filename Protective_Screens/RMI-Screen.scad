

use<RMI_Uccle/Side_Panel.scad>
use<RMI_Uccle/Back_Panel.scad>
use<RMI_Uccle/Front_Panel.scad>
use<RMI_Uccle/Floor.scad>

front_panel();
translate([0,0.042,0])rotate([0,0,-90])side_panel();
translate([0,-0.529,0])back_panel();
translate([0.018,-0.529,0])full_floor();