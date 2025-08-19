clc;clear all;close all;
x = [0, 1, 2, 3, 4, 5, 6];
y = [0, 0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];
n = input('Enter the polynomial order (1, 2, or 3): ');
for i = 1:4
    Xk(i) = input(sprintf('Enter X%d (between 0 and 6): ', i));
end
if n == 1
    segments = {[0,1], [1,2], [2,3], [3,4], [4,5], [5,6]};
elseif n == 2
    segments = {[0,1,2], [2,3,4], [4,5,6]};
else
    segments = {[0,1,2,3], [3,4,5,6]};
end
for k = 1:4
    for s = 1:length(segments)
        idx = segments{s} + 1;
        x_seg = x(idx);
        y_seg = y(idx);
        if Xk(k) >= min(x_seg) && Xk(k) <= max(x_seg)
            Yk(k) = 0;
            for i = 1:length(x_seg)
                Li = 1;
                for j = 1:length(x_seg)
                    if j ~= i
                        Li = Li * (Xk(k) - x_seg(j)) / (x_seg(i) - x_seg(j));
                    end
                end
                Yk(k) = Yk(k) + y_seg(i) * Li;
            end
            break;
        end
    end
end
Xk
Yk
plot(x,y,Xk,Yk,'o');
