void fleche(int xpos, int ypos){
 line(xpos,ypos,xpos,ypos+20);
 line(xpos,ypos,xpos-5,ypos+10);
 line(xpos,ypos,xpos+5,ypos+10);
}

boolean boutonm(int indice){
    if (dist(width/2+150,positionboutonm[indice],mouseX,mouseY)<40 && mousePressed==true){
      done3[indice]=true;
      ellipse(width/2+150,positionboutonm[indice],40,40);
      return true;
  } else {
  if (done3[indice]==false){
    return false; 
  } else {
    ellipse(width/2+150,positionboutonm[indice],40,40);
   return true; 
    }
  }
}

boolean boutond(int indice){
      if (dist(width/2+150,positionboutond[indice],mouseX,mouseY)<40 && mousePressed==true){
      done4[indice]=true;
      ellipse(width/2+150,positionboutond[indice],40,40);
      return true;
  } else {
  if (done4[indice]==false){
    return false; 
  } else {
    ellipse(width/2+150,positionboutond[indice],40,40);
   return true; 
    }
  }
}