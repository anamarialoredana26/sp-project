function[]=T1_temaPCT5_Busca_Loredana(t,nr)
A=1.5;
T=4;
figure(nr)
s=A*abs(sin(2*pi*t*1/T));
plot(t, s, '-r.' ),title('Semnal sinusoidal redresat dubla alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end