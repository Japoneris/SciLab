
A = -1
while A < 0
    A = input('Entrez un nombre supérieur ou égal à 0 : ');
end

B = 1; // Accumulateur
b = 1; // compteur
while B < A
    b = b + 1
    B = B * b;
end

if A == B 
    disp(string(A)+' égal à '+string(b)+'!')
else 
    disp(string(A)+' plus petit que '+string(b)+'!')
end

