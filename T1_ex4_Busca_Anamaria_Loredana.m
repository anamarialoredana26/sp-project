% a)
z = zeros(1,21);
z(6) = 1;
n = 0:20;
m = -5:15;
% Reprezint vectorul z in functie de n sau m cu functia stem 
% Cu grid se traseaza o retea de linii
figure(1)
subplot(2,1,1),stem(z,n),title('stem(z,n)'),grid
subplot(2,1,2),stem(z,m),title('stem(z,m)'),grid

%b) 
t = abs(10-n);
figure(2)
stem(t,n),title('stem(t,n)'),grid

%c) 
figure(3)
n = -15:25;
x1 = sin((pi/17)*n);
m = 0:50;
x2 = cos((pi/sqrt(23))*m);
%Folosesc plot deoarece stem nu functioneaza pentru afisarea mai multor grafice
%intr-o singura fereastra.
plot(x1,n,x2,m),title('plot(x1,n,x2,m)'),grid

%c. se trece la alta figura pentru a se afisa urmatoarele grafice intr-o
%fereastra separata si se reprezinta grafic x1 si x2 in aceeasi fereastra dar
%nu in acelasi grafic
figure(4)
subplot(2,1,1),stem(x1,n),title('stem(x1,n)'),grid
subplot(2,1,2),stem(x2,m),title('stem(x2,m)'),grid