//Practical 3
//SingleServerQueueSimulation
//Find service time, idle time, wait time for a single queue server

//2 3 1 1 1 1 2		arrival time 
//0 6 7 11 14 20 25	burst time
//a(1, 1)
a = [0 ,2;
     6 ,3;
     7 ,1;
     11 ,1;
     14 ,1;
     20 ,1;
     25	,2]
wait = [0, 0, 0, 0, 0, 0, 0]
idle = [0, 0, 0, 0, 0, 0, 0]
se = [0, 0, 0, 0, 0, 0, 0]	//service end
cur_ser = 0;
for i = 1 : 7
	at = a(i, 1)
    bt = a(i, 2)
	if(cur_ser > at)	then
    	wait(i) = cur_ser - at
	else
      cur_ser = at
	end
    
    cur_ser = cur_ser + bt

    se(i) = cur_ser
   
    if(i < 7)	then
    	if(a(i+1, 1) > cur_ser)	then
        	idle(i) = a(i+1, 1) - cur_ser
        end
    end
end

disp("Wait ")
for (i = 1:7)   disp(wait(i))   end

disp("Service Time ")
for (i = 1:7)   disp(se(i))   end

disp("Idle Time ")
for (i = 1:7)   disp(idle(i))   end
