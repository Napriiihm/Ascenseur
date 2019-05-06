void tri_decroissant(int tab[]){
  for (int i=0; i<5; i++){
    if (i<4){
      int variable=tab[i];
      int indice=i;
      for (int j=i+1; j<5; j++){
        if ((variable<tab[j] && tab[j]<etageactuel) || (variable>tab[j] && variable>=etageactuel && tab[j]!=0)){
          variable=tab[j];
          indice=j;
        }
      }
      tab[indice]=tab[i];
      tab[i]=variable;
    }
  }
}

void tri_croissant(int tab[]){
   for (int i=0; i<5; i++){
    if (i<4){
      int variable=tab[i];
      int indice=i;
      for (int j=i+1; j<5; j++){
        if ((variable>tab[j] && tab[j]!=0 && tab[j]>etageactuel) || (variable<tab[j] && variable<=etageactuel)){
          variable=tab[j];
          indice=j;
        }
      }
      tab[indice]=tab[i];
      tab[i]=variable;
    }
  }
}

void tri_tab(){
 if (diffetage==0){
  for (int i=0; i<4; i++){
    etagecall[i]=etagecall[i+1];
  }
  etagecall[4]=0;
 }
 if (diffetage>0){
   tri_croissant(etagecall);
 } else if (diffetage<0){
   tri_decroissant(etagecall);
 }
}