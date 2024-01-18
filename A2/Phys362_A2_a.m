function Phys362_A2_a
% Power density received as a function of time

% Variables:
P = 30e-6; A = 4e-6; w = (3e8).*((2*pi()/(632e-9)));
t = linspace(0,10e-15,1000);
S = (2*P/A).*(sin(w.*t)).^2;

plot(t,S,'-')
xlabel('Time (seconds)')
ylabel('Power density as a function of time')
legend('S = - P_{ave}/A sin^2({\omega}t)','location','best')

