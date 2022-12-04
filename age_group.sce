y=grand(100,1,"uin",10,100)
disp(y)
pgl=histplot(10,y,normalization=%f)
xtitle("Age_group vs Frequency","Age-Group","Frequency");
disp(mean(pgl))
disp(stdev(pgl))
disp(variance(pgl))
