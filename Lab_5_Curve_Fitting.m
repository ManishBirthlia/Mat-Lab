
%         Manish Kumar
%         20BCH044
%         Lab_5 #Q1   


height = [0, 1.7, 1.95, 2.60, 2.92, 4.04, 5.24];
flow = [0, 2.6, 3.6, 4.03, 6.45, 11.22, 30.61];
new_height = 0:0.5:6;
polyorder = 1; 
p1 = polyfit(height, flow, polyorder) ;
new_flow1 = polyval(p1,new_height);
polyorder = 2; %quadratic
p2 = polyfit(height, flow, polyorder);
new_flow2 = polyval(p2,new_height); 
polyorder = 3; 
p3 = polyfit(height, flow, polyorder);
new_flow3 = polyval(p3,new_height);
plot(height, flow, 'o', new_height, new_flow1, new_height, new_flow2, new_height, new_flow3)
title('Model fitting')
xlabel('height')
ylabel('flow')
legend('real data', 'linear model', 'quadratic model', 'cubic model')