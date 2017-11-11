function[T] = T1_ex5_Busca_Loredana(t,s,checkIfCos)

% se verifica daca se construieste un semnal cosinusoidal
if checkIfCos == 0
    
    % a.se reprezinta grafic semnalul intr-o retea
    plot(t,s,'.-'),xlabel('Timp [s]'),grid

    % b.se cauta varfurile graficului iar diferenta valorilor este perioada
    % semnalului
    [idx,idx] = findpeaks(s);
    T = t(idx(2))-t(idx(1));

else
    % c.se recreeaza primul semnal sinusoidal si il afisez 
    F1 = 50;
    s1 = 2*sin(2*pi*F1*t);
    plot(t,s,t,s1),xlabel('Timp [s]'),color('red'),grid
end

end