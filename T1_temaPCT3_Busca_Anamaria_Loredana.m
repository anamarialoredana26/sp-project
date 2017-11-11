function[]=T1_temaPCT3_Busca_Loredana(t,nr)

%se seteaza nivelurile din enunt unul cate unul
niv = [ -1 1 ];

T1_temaPCT3bucla_Busca_Loredana(t,nr,niv,1);

niv = [ -3 -1 1 3];
T1_temaPCT3bucla_Busca_Loredana(t,nr,niv,2);

niv = [ -5 -3 -1 1 3 5];
T1_temaPCT3bucla_Busca_Loredana(t,nr,niv,3);

niv = [ -7 -5 -3 -1 1 3 5 7];
T1_temaPCT3bucla_Busca_Loredana(t,nr,niv,4);

end