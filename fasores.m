% Fiz esse programa em um app diferente do matlab
% Acho que precisa retirar os % e trocar os / por %

v1 = 50*exp(i*36.87*pi/180);
v2 = 81.65/sqrt(2)*exp(i*((pi/3)-(pi/2)));
v3 = -1.41 + i*18.75;

vt = v1+ v2 + v3;

figure(1);
xtitle('Fasores das Tensões','Real','Imag');
plot([0,real(v1)],[0,imag(v1)],[0,real(v2)],[0,imag(v2)],[0,real(v3)],[0,imag(v3)],[0,real(vt)],[0,imag(vt)]);
legend('v1','v2','v3','vt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i1 = 15*exp(i*143.13*pi/180);
i2 = 30/sqrt(2)*exp(i*(-pi/4));
i3 = 15.79 - i*0.84;

it = i1 + i2 + i3;

figure(2);
xtitle('Fasores das Correntes','Real','Imag');
plot([0,real(i1)],[0,imag(i1)],[0,real(i2)],[0,imag(i2)],[0,real(i3)],[0,imag(i3)],[0,real(it)],[0,imag(it)]);
legend('i1','i2','i3','it');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w = 50*2*pi;
t = linspace(0,1.5/50,100);

fv1 = 50*sqrt(2)*cos(w*t + 36.87/180*pi);
fv2 = 81.65*cos(w*t + pi/3 - pi/2);
fv3 = abs(v3)*sqrt(2)*cos(w*t + atan(imag(v3),real(v3)));
fvt = fv1 + fv2 + fv3;

figure(3);
xtitle('Tensões no tempo','Real','Imag');
plot(t,fv1,t,fv2,t,fv3,t,fvt);
legend('v1','v2','v3','vt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v13 = v1+v3;
v2  = 81.65/sqrt(2)*exp(i*atan(imag(v13),real(v13)));
vt = v1 + v2 + v3;
tensao = abs(vt)
angulo = atan(imag(v13),real(v13))

