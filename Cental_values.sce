lis=[1,2,9,5,4,6,3,3]
disp("mean: ",sum(lis)/length(lis))
lis=gsort(lis)
disp(lis)
len=length(lis)
disp("median: ")
if (modulo(len,2)==1) then
    disp(lis((len/2)+1))

else
    disp((lis(len/2)+lis((len/2)+1))/2)
end
disp("varience")
disp(variance(lis))
disp("standard deviation")
disp(stdev(lis))
