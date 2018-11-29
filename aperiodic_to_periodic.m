%accuracy=100 is good

function [output_t,output_x]=aperiodic_to_periodic(input_t,input_x,lim1,lim2,N,accuracy_parameter,period)

[omega,ak]=fourier_transform_sample(input_t,input_x,-accuracy_parameter,accuracy_parameter,2*pi/period);

len_k=length(omega);
output_x=0;
output_t=lim1:1/N:lim2;
for loop_i=1:1:len_k
    output_x=output_x+ak(loop_i)*exp(1i*omega(loop_i)*output_t);
end