V = zeros(1,4);
I = zeros(1,3);

%Tensões
V(1,1)  = 37.871998 + 37.068507i;
V(1,2)  = 15.587993 - 6.7013813i;
V(1,3)  = 8.429678  - 30.367126i;
V(1,4) = V(1) + V(2) + V(3) %Eq

%Correntes
I(1,1)  = 10*exp(i*(-45)*(pi/360));
I(1,2)  = 10*exp(i*(  0)*(pi/360));
I(1,3)  = 10*exp(i*( 45)*(pi/360))

%Cálculos
%Dimensões do vetor: Tensão, Resultado, Corrente
%Resultados: 1-S / 2-P / 3-Q / 4-fp / 5-Theta / 6-Z
results = zeros(4,6,3);

for c = 1:3
  for d = 1:4
    results(d,1,c) = abs(V(1,d))*abs(I(1,c)); %S
    results(d,5,c) = (imag(I(1,c))/real(I(1,c))) - (imag(V(1,d))/real(V(1,d))); %Theta
    theta          = results(d,5,c);
    results(d,2,c) = results(d,1,c)*cos(theta); %P
    results(d,3,c) = results(d,1,c)*sin(theta); %Q
    results(d,4,c) = cos(theta); %fp
    results(d,6,c) = V(1,d)/I(1,c); %Z
  endfor
endfor

results