arrival=[0,1,3,4,6,7]           //arrival time of processes
service_time=[3,2,4,7,5,6]      //service time for processes
finishing_time=[0,0,0,0,0,0]    //finnishing time of processes 
waiting_time=[0,0,0,0,0,0]      //waiting time for each process
serv1=0                         // time till server1 is busy
serv2=0                         // time till server2 is busy
for i=1:6          
	t=arrival(i)                          // current time
	if serv1<=arrival(i) then            // if server1 is free    zero waiting time  
    	serv1=t+service_time(i)          
        finishing_time(i)=serv1
    else if serv2<=arrival(i) then       // if server2 is free    zero waiting time 
    	serv2=t+service_time(i)
        finishing_time(i)=serv2
    else                                 // if both are busy then we will check which one will get free first  
      	if serv1<=serv2 then
        	waiting_time(i)=serv1-arrival(i)	 //waiting time acc to serv availability (for how much time server is busy) 
        	serv1=serv1+service_time(i)
            finishing_time(i)=serv1
        else
            waiting_time(i)=serv2-arrival(i)	
        	serv2=serv2+service_time(i)
            finishing_time(i)=serv2
        end
    end
    
end
end
disp("finishing time:")
disp(finishing_time)
disp("waiting time :")
disp(waiting_time)
