%BUSCA ANAMARIA LOREDANA 421 C
%Numarul de la catalog : 3
%Semnal dreptungiular
N = 50; % numarul de coeficienti
D = 5; % durata
P = 40; % perioada
F=1/P; % frecventa 
w0=2*pi/P; % pulsatia
t=0:0.02:P-0.02; % timpul pe care calculam integrala (o perioada); 
                 % rezolutia temporala trebuie sa fie de 2 ori mai mica decat perioada semnalului (teorema esantionarii);
k=-N/2:N/2;%reprezinta un vector cu elemente de la -N/2 la N/2 avand pasul 1
Xk=(1./(-j*k*2*pi)).*(exp(-j*k*w0*D)-1).*exp(j*k*w0*D/2)% sir care contine
 %valorile coeficientilor Xk, pentru toate valorile vectorului k
 %expresia de calcul a coeficientilor a fost dedusa manual
Xk(find(k==0))=D/P;%asociaza coeficientului pentru care k=0 valoarea mediei
 %pe o perioada a semnalului

x = zeros(1,size(t,2)); % initializarea lui x cu zerouri
x(t<=D/2) =1; % de la 0 la D/2 x are valoarea 1
x(t>P-D/2) =1; % de la D/2 la P x are valoarea 1
t_4perioade = 0:0.02:4*P-0.02; % vectorul timp pentru reprezentarea pe 4 perioade
x_4perioade = repmat(x,1,4); % vectorul x pentru reprezentarea pe 4 perioade
   
% Integrala numerica prin functia trapz
for k = -N:N
    x_temp = x;
    x_temp = x_temp.*exp(-j*k*w0*t); % vectorul inmultit cu termenul corespunzator
    X(k+51) = trapz(t,x_temp); % trapz calculeaza integrala prin metoda trapezului 
    %(imparte suprafata in forme trapezoidale pentru a calcula mai usor aria)
end

x_refacut(1:length(t)) = 0; % initializarea semnalului reconstruit cu N puncte

% Reconstructia lui x(t) folosind N coeficienti
for i = 1:length(t);
    for k = -N:N
     x_refacut(i) = x_refacut(i) + (1/P)*X(k+N+1)*exp(j*k*w0*t(i));
    end
end

figure(1);
plot(t_4perioade,x_4perioade); % afisarea lui x(t)
title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold on
x_refacut_4perioade = repmat(x_refacut,1,4); % generarea lui x reconstruit pentru 4 perioade
plot(t_4perioade,x_refacut_4perioade,'--'); % afisarea lui x reconstruit pentru 4 perioade
xlabel('Timp [s]');
ylabel('Amplitudine');

f = -N*F:F:N*F; % generarea vectorului de frecvente
figure(2);
stem(f,abs(X)); % afisarea lui X
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
ylabel('|X|');

%%
%  Orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri si cosinusuri de
% diferite frecvente, fiecare avand un anumit coeficient. Acesti
% coeficineti reprezinta spectrul de amplitudini pentru anumite frecvente.
% Semnalul reconstruit nu este identic cu cel initial deoarece s-au folosit
% doar N coeficienti, care au componente in spectrul de amplitudini mai
% mari decat o valoare limita sub care toate celelalte componente se
% neglijeaza.