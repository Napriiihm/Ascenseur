int y;  //hauteur ascenseur
int positionbouton[] = {573,627,681,735,789}; //positions boutons dans l'ascenseur
int positionboutonm[] = {216,348,480,612};
int positionboutond[] = {134,266,398,530};
int positionporte[] = {582,450,318,186,54}; //positions des portes
int positionetage[] = {582+4,450+4,318+4,186+4,54+4}; //positons en y des étages
//int etagecall; //étage demander dans l'ascenseur 
int diffetage; //différence d'étage à parcourir
int etageactuel;
boolean capteur[] = {false,false,false,false,false}; //capteur étages
boolean porte[] = {false,false,false,false,false};
boolean done2[] = {false,false,false,false,false};
boolean done3[] = {false,false,false,false};
boolean done4[] = {false,false,false,false};
boolean place_in_tab[] = {false,false,false,false,false};
int etagecall[] = {0,0,0,0,0};
boolean wait=false;
int time;
boolean timeok=false;
boolean done[] = {false,false,false,false,false}; //pour réalisé une ligne une seul fois

void setup(){
  fullScreen();
  //y=54+4+4*4+4*(((height-100)/5)-5); //représente l'étage 0 (586,454,190,58)
  y=positionetage[int(random(0,5))];
  //etagecall=1;
  time=millis();
}

void draw(){
  background(255);
  fill(#5E5F5F);
  rect(width/2-100,50,200,height-100-4);
  for(int i=0;i<5;i++){
   fill(255);
   rect(width/2-96,54+i*4+i*(((height-100)/5)-5),192,((height-100)/5)-5);
   fill(#79F5FF,100);
   rect(width/2-96,54+i*4+i*(((height-100)/5)-5),192,((height-100)/5)-5); //carré des étages en bleu (54,186,318,450,582)
   fill(#C6C6C6);
   rect(width/2-96-90,54+i*4+i*(((height-100)/5)-5),70,((height-100)/5)-5);  //portes
   fill(#F5C02C,150);
   ellipse(width/2-110+54*i,height-25,40,40);  //boutons appel étages dans l'ascenseur (573,627,681,735,789)(height-25)
   textSize(20);
   if (i>0){ //afficher les fleches vers le haut
     ellipse(width/2+150,54+i*4+i*(((height-100)/5)-5)+30,40,40); //boutons vers le haut (width/2+150)(216,348,480,612)
     fleche(width/2+150,54+i*4+i*(((height-100)/5)-5)+30-10);
   }
   if (i<4){ //afficher les fleches vers le bas
     ellipse(width/2+150,54+i*4+i*(((height-100)/5)-5)+30+40+10,40,40); //boutons vers le bas (width/2+150)(134,266,398,530)
     pushMatrix();
     translate(width/2+150,54+i*4+i*(((height-100)/5)-5)+30+40+10+10);
     rotate(PI);
     fleche(0,0);
     popMatrix();
   }
   fill(0);
   text(i+1,width/2-110-5+54*i,height-25+5); //numéros boutons appel étages
  }
  capteur();
  portes();
  cabine(y);
  waitt();
  etagecall();
  calcul_etage_actuel();
  calcul_diff_etage();
  mouvement();
  tri_tab();
  //print(etagecall[0]);
  //print(wait);
  for (int i=0; i<5;i++){
  text(etagecall[i],350+20*i,400);
  }
  text(etageactuel,300,400);
}