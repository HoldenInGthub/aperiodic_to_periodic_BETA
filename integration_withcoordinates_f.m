function y=integration_withcoordinates_f(n_x,x)    
time_interval=n_x(2)-n_x(1);
len_x=length(x);
y=(x(1)+x(len_x))/2;
for i=2:1:len_x-1
    y=y+x(i);
end
y=y*time_interval;