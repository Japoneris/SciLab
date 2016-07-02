annee=input('Entrez l''année intéressante')
if (modulo(annee,400) == 0 | modulo(annee,100)<>0) & modulo(annee,4)==0
    jplus=29
    Bissextile=1
else 
    jplus=28
    Bissextile=0
end
disp(jplus)
