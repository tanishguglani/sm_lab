//Fighter Bomber Problem
//Given the coordinates of Bomber and formula for fighter jets, find if in the given time period (12 s) whether the Bomber be able to attack on the fighter jet.

xb = [80, 90, 99, 101, 116, 125, 133, 141, 159, 160, 169, 179, 180]
yb = [0, -1, -5, -9, -15, -18, -23, -29, -28, -25, -21, -20, -17]

xf = 0
yf = 50
for i = 1:12
	dis = sqrt ((yb(i) - yf) * (yb(i) - yf) + ((xb(i) - xf) ^ 2))
    
    xf = xf + 20 * ((xb(i) - xf) / dis)
    yf = yf + 20 * ((yb(i) - yf) / dis)
    if(dis <= 10) then
      disp("Attacked on ")
      disp(i)
      end
    end
