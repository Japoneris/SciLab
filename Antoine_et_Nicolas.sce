// Théorie des grands normbres
// Antoine et nicolas joue à pile ou face
// Antoine possède une somme a et Nicolas une somme b
// L'un des deux joueurs a plus de facilité à gagner chaque manche(jeu non équilibré)
// Le keu s'arrete lorsque l'un des deux joueurs n'a plus d'argent
// A simulation de jeu sont lancées
// Permet d'obtenir une approximation de la probabilité de gagner sur un jeu non équilibré

A = input('Nombre de parties : ');
GN = 0;
GA = 0;
AA = A;
aa = 0; //victoire antoine 
bb = 0; //victoire nicolas 
c = 0;

while A <> 0
    a = 4; //antoine démarre avec 4 euros
    b = 2; // nicolas démare avec 2 euros
    aaa = 1/3; //probabilité pour antoine de gagner la partie
    
    
    
    while a<>0 & b<>0
        w = rand()
        if w > aaa 
            bb = bb + 1;
            a = a - 1;
            b = b + 1
        elseif  w < aaa
            aa = aa + 1;
            b = b - 1;
            a = a + 1;
        else 
            c = c + 1;
        end
    end
    
    if a == 0 then
        GN = GN + 1;
    else 
        GA = GA + 1;
    end
    
    A = A - 1;
end


disp('Nicolas a gagné '+string(GN/AA*100)+' % des parties.')

disp('Antoine a gagné '+string(GA/AA*100)+' % des parties.')

disp('Chaque partie ce fait en '+string((c+aa+bb)/AA)+' manches')
