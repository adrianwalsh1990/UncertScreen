//RMI - Uccle - Dimensions

//Legs
LprofilW = 0.04;
LprofilL = 0.04;
LprofilH = 1.580;
LprofilT = 0.005;
LDist = 0.541;

leg_pts = [
    [-LprofilW/2, LprofilL/2], [LprofilW/2, LprofilL/2],
    [-LprofilW/2, (LprofilL-LprofilT)/2], [(LprofilW-LprofilT)/2, (LprofilL-LprofilT)/2],
    [LprofilW/2, -LprofilL/2], [(LprofilW-LprofilT)/2, -LprofilL/2],
    ];
leg_pths = [[0,1,4,5,3,2]];


module Legs(leg_pts, leg_pths, extrude_height) {
    linear_extrude(height = extrude_height)polygon(points = leg_pts, paths = leg_pths);
}

module Mirror_Legs(leg_pts, leg_pths, extrude_height, distance){
    translate([0,distance/2,0])Legs(leg_pts, leg_pths, extrude_height);
    translate([0,-distance/2,0])mirror([0,1,0])Legs(leg_pts, leg_pths, extrude_height);
}

Mirror_Legs(leg_pts,leg_pths,LprofilH,LDist);
