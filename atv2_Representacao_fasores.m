%Grandezas
f   = 2000;
w   = 4000*pi;
A1  = 75;
A2  = 25;
A3  = 45;
fi1 = acos(-34*(20/12) / A1)
fi2 = acos(  5*(20/12) / A2)
fi3 = acos( 25*(20/12) / A3)
t = linspace(-0.0005,0.0005,1000);

%Sinais no tempo
v1 = A1*cos(w*t + fi1);
v2 = A2*cos(w*t + fi2);
v3 = A3*cos(w*t + fi3);

vt = v1+v2+v3;

%Plot
figure(1);
%xtitle('Tensoes no tempo','Real','Imag');
plot(t,v1,t,v2,t,v3,t,vt);
legend('v1','v2','v3','vt');


%Fasores
v1 = A1/sqrt(2)*exp(i*fi1);
v2 = A2/sqrt(2)*exp(i*fi2);
v3 = A3/sqrt(2)*exp(i*fi3);
vt = v1+v2+v3

%Plot
figure(2);
%xtitle('Fasores das Tensoes','Real','Imag');
plot([0,real(v1)],[0,imag(v1)],[0,real(v2)],[0,imag(v2)],[0,real(v3)],[0,imag(v3)],[0,real(vt)],[0,imag(vt)]);
legend('v1','v2','v3','vt');


%Modificando Vt a partir de v2
%Primeiro, encontro a fase de v1+v3
v13  = v1+v3;
fi13 = atan(imag(v13)/real(v13))
%Agora, posiciono v2 tal que possua fase inversa a de v13
novo_fi2 = fi13+(pi)
novo_v2  = A2/sqrt(2)*exp(i*novo_fi2);
%E calculo novo vt
novo_vt = v1+novo_v2+v3;
abs(novo_vt)

%no tempo...
v1 = A1*cos(w*t + fi1);
novo_v2 = A2*cos(w*t + novo_fi2);
v3 = A3*cos(w*t + fi3);
novo_vt = v1+novo_v2+v3;

%Plot
figure(3);
%xtitle('Fasores das Tensoes modificadas','Real','Imag');
plot(t,v1,t,novo_v2,t,v3,t,novo_vt);
legend('v1','v2','v3','vt');
