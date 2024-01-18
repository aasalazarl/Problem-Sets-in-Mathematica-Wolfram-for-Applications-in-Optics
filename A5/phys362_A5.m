function phys362_A5

theta = linspace(-0.1,0.1,1000);
D = 20*10^(-6);
r = 2;
lambda = 632*10^(-9);
a = ((2*pi())/lambda)*(D/2)*theta;
epsilon = 8.85*10^(-12);
c = 3*10^8;

Ip = ((epsilon*c)/2)*(((((D/2)^2) * pi())/r)^2).*(((2*besselj(1,a))./a).^2);
Ip = (((2*besselj(1,a))./a).^2);
plot(a,Ip)