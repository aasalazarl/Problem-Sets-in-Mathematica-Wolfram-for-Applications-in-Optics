function Phys362_A2_b

P = 30e-6; A = 4e-6; w = (3e8).*((2*pi()/(632e-9)));
S = @(t) 2*P/A.*(sin(w.*t)).^2;

% Integrate S
    % From 0 to 0
Q1 = integral(S,0,0);
    % From 0 to +inf
Q2 = integral(S,0,+inf);
I2 = 1/(inf);

fprintf('The time averaged poynting vector for a time interval delta_T = 0-0 = 0 is: I = %1.0f \n',Q1)
fprintf('The time averaged poynting vector for a time interval delta_T = +infinity - 0 = +inf is: I = %1.3e \n',I2)

end