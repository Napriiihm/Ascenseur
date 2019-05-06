boolean bouton(int indice){
  if (dist(positionbouton[indice],height-25,mouseX,mouseY)<20 && mousePressed==true){
      done2[indice]=true;
      ellipse(positionbouton[indice],height-25,40,40);
      return true;
  } else {
  if (done2[indice]==false){
    return false; 
  } else {
    ellipse(positionbouton[indice],height-25,40,40);
   return true; 
    }
  }
}