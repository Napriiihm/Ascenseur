void capteur(){
for (int i=0; i<5; i++){
 if (y<positionetage[i]+2 && y>positionetage[i]-2){
  capteur[i]=true; 
 } else {
  capteur[i]=false; 
 }
}
}