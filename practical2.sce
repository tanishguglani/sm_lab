//Inventory Problem
//Given 5 Policies to be implemented on a tyre business, provide the output for each of the policy i.e. profit and loss for common random inputs and provide the best policy to be implement to maximize the profit.

r = (floor(rand(1:90) * 100) + 1)

x = [125, 125, 150, 175, 175]
y = [150, 250, 250, 250, 300]

for pol = 1:5
   cur = 115	//no of tyres in stock
    p = 0		//profit
    l = 0		//loss
    day = 3		//reorder day left
   
	for i = 1 : 90
	limit = x(pol)
    reorder = y(pol)
	cus = r(i)	//no of customers on ith day
    
    if(i > day) then	//order arrived
    	cur = cur + reorder
        day = 90
    end
    
    if(cus > cur) then	//loss
    	p = p + (cur * 16)
    	l = l + (cus - cur) * 18
        cur = 0
    //end
    else
      	p = cus * 16	//no loss
        cur = cur - cus
        l = l + (cur * 0.75)
    end
    
    if((cur <= limit) & (day == 90)) then		//need to reorder
    	day = i+3
   	end
   
   end
    disp("pol",pol)
    disp("profit",p)
    disp("loss",l)
    disp("Remaining",cur)

end




    
