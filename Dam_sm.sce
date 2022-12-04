dam_level=110                  // dam level in m
usage=10                       // domestic usage in cms 
pop_incr=0.1                 // population increse factor in cms
dam_vol=50                 // level of water in dam in m
z=0                       // overflow underflow variable
for i=1:100               // 100 years controlling loop
	rain=grand(12,1,"uin",10,50)                    //rain in cm per month
	river_flow=grand(12,1,"uin",40,50)                //river flow in cm per month
	seepage=grand(12,1,"uin",2,10)               //seepage in cm per month
	evap=grand(12,1,"uin",2,50)               // evaporation in cm per month
  for j=1:12                             // month controlling loop
    	  inflow=rain(j)+river_flow(j)
        outflow=seepage(j)+evap(j)+usage
        dam_vol=dam_vol+(inflow-outflow)/100
        usage=usage+pop_incr
        if dam_vol>dam_level then
        	z=1
            disp("dam flooded after")
            disp(i)
            disp("years")
            break
        end
        if dam_vol<=0 then
        	z=1
            disp("dam emptied after")
            disp(i)
            disp("years")
            break
        end
    end
	if z==1 then
    	break
    end
end
