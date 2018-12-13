xback_panel=0;yback_panel=0;zback_panel=0;
xfront_panel=0;yfront_panel=0;zfront_panel=0;
xside_gpi_panel=0;yside_gpi_panel=0;zside_gpi_panel=0;
xside_hdmi_panel=0;yside_hdmi_panel=0;zside_hdmi_panel=0;
xtop_panel=0;ytop_panel=0;ztop_panel=0;
xbottom_panel=0;ybottom_panel=0;zbottom_panel=0;

import("back_panel_SD.stl");
translate([160,0,0])
import("front_panel_USB.stl");
scale([1.7,1,1])
{
    translate([50,30,0]){
    rotate([-90,0,0])
    import("side_panel_GPIO_updated.stl");
    }
    translate([50,-30,0])
    {
    rotate([-90,0,0])
    import("side_panel_HDMI.stl");
    }
}
    translate([80,0,-25])
    {
        rotate([0,0,90])
        {
            
            
            union()
            {
                scale([1,1.7,1])
                {
                  translate([-25,-42.5,0]) 
                  cube([50,80,3]);
                  import("bottom_panel.stl");
                }
                scale([ 0.6, 0.8, 1 ])
                { translate([-30,34,3])
                  import("flexbatter18650x3.stl");
                }
            }
                    
            
        }
       
        
    }


    difference()
    {
    translate([80,0,25])
    {  
     rotate([0,0,90])
      {
    scale([1,1.7,1]){            
    translate([-25,-40,0])    
    cube([53,80,3]);
    import("top_panel.stl");
    }
               
           

          
       }  
    }
    translate([120,0,22])
    #cylinder(h=8, r1=5, r2=5, center=false);
    translate([110,-10,22])
    #cylinder(h=8, r1=1, r2=1, center=false);
    translate([110,10,22])
    #cylinder(h=8, r1=1, r2=1, center=false);
    translate([130,10,22])
    #cylinder(h=8, r1=1, r2=1, center=false);
    translate([130,-10,22])
    #cylinder(h=8, r1=1, r2=1, center=false);

    }





