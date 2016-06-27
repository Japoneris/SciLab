A = input('Quelle année ?');
    // Pour info : 1585, mardi; 1584, dimanche; 1583, samedi
    // une année non bissextile tout les 400 ans (dont 1600)
    // on gagne 2 jour apres chaque année bissextile
    // on gagne 1 jour si l'année n'est pas bissextile
    
   I = 0; // nombre de jour non supplémentaire dus aux années tous les 400 ans
    
// depuis 1600,
// si l'année est multiple de 100 (1900, 1800), l'année n'est PAS bissextile
// sauf si multiple de 400 (2000, 1600, 2400)

// if A > 1601 
 G = A - 1601;
 H = floor(G/100); //nombre d'année 100tenaire aprés 1600
 I = floor(H/4) - H ;  //nombre d'année non bissextile %4 à enlever
//end

B = A - 1583;     // difference d'année (1 jour en plus par année normale supplémentaire
                          // les jours se rejoutent APRES l'année %4
                          // 1584 est bissextile, mais le jour en plus apparait en février, donc décalage l'année suivante
D = floor((A - 1581)/4);   // nombre d'année bissextile en plus/en moins par rapport à 1581
E = D + B + I;            // nombre de jours en plus
E = modulo(E,7);

if E < 0 
  E = E + 7;
end

//affiche le 1er jour de l'an
if E==2 disp('Lundi')
elseif E==3 disp('Mardi')
elseif E==4 disp('Mercredi')
elseif E==5 disp('Jeudi')
elseif E==6 disp('Vendredi')
elseif E==0 disp('Samedi')
else disp('Dimanche') 
end
