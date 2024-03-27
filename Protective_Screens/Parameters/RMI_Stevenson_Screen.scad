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



//Back supports of box //Check this comsol has too different size supports
overlap = 0.065;
bs_width = 0.042;
bs_length = bs_width;
bs_height = 0.702;
bs_dist = 0.541 - LprofilT;
bs_pts = [
    [-bs_width/2, bs_length/2],
    [bs_width/2, bs_length/2],
    [-bs_width/2, -bs_length/2],
    [bs_width/2, -bs_length/2],
    ];
bs_pths = [[0,1,3,2]];