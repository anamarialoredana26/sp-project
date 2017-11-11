function[ma,vsquare,m1] = T1_ex3_Busca_Loredana(v)
%media aritmetica a partilor reale
ma = mean(real(v));
%vectorul vsquare returneaza elementele din vectorul v la patrat
vsquare = v.^2;


b = v.';


m1 = v * b;
end