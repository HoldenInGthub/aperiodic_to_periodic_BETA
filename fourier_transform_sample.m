function [omega,omega_Matrix]=fourier_transform_sample(input_t,input_x,lim1_F,lim2_F,omega0)

omega=lim1_F*omega0:omega0:lim2_F*omega0;
omega_Matrix=zeros(1,length(omega));
integration_loop_i=1;
for omega_loop=lim1_F*omega0:omega0:lim2_F*omega0
    X=integration_withcoordinates_f(input_t,input_x.*exp(-1i*omega_loop.*input_t));
    omega_Matrix(1,integration_loop_i)=X;
    integration_loop_i=integration_loop_i+1;
end