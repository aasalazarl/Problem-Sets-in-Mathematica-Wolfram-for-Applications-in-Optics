function phys362_A1_Q2
% Plot the (resultant) wave function
% PsiR = 2Asin(kx-11pi/60)cos(wt-pi/60)

% Scale stuff:
A = 1; %T = wt; X = kx

X = linspace(-pi(),2*pi(),1000); % x-variable

for T = linspace(0,pi(),8) % Wave evaluated at 8 different times
    hold on
    PsiR = 2.*A.*sin(X-(11*pi()/60)).*cos(T-(pi()/60));
    plot(X,PsiR)
    legend('T_1','T_2','T_3','T_4','T_5','T_6','T_7','T_8')
    xticks([-pi -pi/2 0 pi/2 pi 3*pi/2 2*pi])
    xticklabels({'-\pi','-\pi/2','0','\pi/2','pi','3\pi/2','2\pi'})
    xlabel('kx (radians)'); ylabel('(\Psi_R)/A')
    title('\Psi_R(x,t) vs X=kx at eight different T=\omegat')
    grid on
    hold off
end

saveas(gcf,"phys362_A1_Q2",'png')

end
