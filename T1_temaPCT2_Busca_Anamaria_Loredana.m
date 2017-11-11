function[]=T1_Punctul2_Busca_Loredana(t,nr)

width = 0.5;
%sawtooth(t,width) genereaza un semnal triunghiular iar width determina
%unde se afla maximul
%Inmultest t cu 1/6 pentru ca panta sa devina +1
s=(1+width)*sawtooth(t*2*1/6*pi, width) - width;
figure(nr)
plot(t,s,'-r.'),title('Semnal triunghiular'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end