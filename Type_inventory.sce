reorder_point=[125,125,150,175,175]
reorder_quantity=[150,250,250,250,300]
carrying_cost=0.75
goodwill=2
perunit_cost=16
reorder_cost=70
total_cost=[0,0,0,0,0]
a=grand(30, 1, "uin", 0, 99)
for k=1:5
	  rp=reorder_point(k)
	  rq=reorder_quantity(k)
    quantity=115
    reordered=0
	  time=0
    for i=1:30
    	  if a(i)<=quantity then
        	quantity=quantity-a(i)
        else
          	quantity=0
            total_cost(k)=total_cost(k)+(goodwill+perunit_cost)*(a(i)-quantity)
        end
        if quantity<=rp then
        	  if reordered==0 then
            	  reordered=1
                total_cost(k)=total_cost(k)+reorder_cost
            else
              	if time==3 then
                	quantity=rq
                    time=0
                    reordered=0
                else
                  	time=time+1
                end
            end
        end
       	total_cost(k)=total_cost(k)+(quantity*carrying_cost) 
	end
end
disp("total cost of all 5 policies")
disp(total_cost)
