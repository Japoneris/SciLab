
A = -1
while A < 0
    A = input('Entrez un nombre supérieur ou égal à 0 : ');
end

B = 1; // Accumulateur
b = 1; // compteur
while b < A
    b = b + 1
    B = B * b;
end

disp('Valeur de la factorielle: '+string(B))
