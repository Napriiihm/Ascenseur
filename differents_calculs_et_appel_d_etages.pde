void etagecall(){
 for (int i=0; i<5; i++){
  if (diffetage==0 && y==positionetage[i]){
   place_in_tab[i]=false;
   done2[i]=false; 
  }
  if (bouton(i)==true){
   if (place_in_tab[i]==false){
    int indice=0;
    while (place_in_tab[i]==false){
      if (etagecall[indice]==0){
        etagecall[indice]=i+1;
        place_in_tab[i]=true;
      } else {
       indice=indice+1; 
      }
    }
   }
  }
 }
}

void portes(){
  for (int i=0; i<5; i++){
   porte[i]= porte(i); 
  }
}

void calcul_etage_actuel(){
  for (int i=0; i<5; i++){
    if (capteur[i]==true){
     etageactuel=i+1; 
     //print(capteur[0]);
    }
  }
}

void calcul_diff_etage(){
  diffetage=etagecall[0]-etageactuel;
  //print(etageactuel);
}

void mouvement(){
 if (porte[0]==false && porte[1]==false && porte[2]==false && porte[3]==false && porte[4]==false && wait==false){
   if (diffetage<0){
    descendre();
   } else if (diffetage>0){
    monter(); 
   }
 }
}