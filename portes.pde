boolean porte(int indice){
       if (porte[indice]==true){
        fill(240);
        rect(width/2-96-90,positionporte[indice],70,((height-100)/5)-5);
     }
  if (mouseX>(width/2-96-90) && mouseX<(width/2-92-20) && mouseY>positionporte[indice] && mouseY<(positionporte[indice]+((height-100)/5)-5) && mousePressed==true){     
      if (done[indice]==false){
      done[indice]=true;
      return (!porte[indice]);
      }
      return porte[indice];
    } else {
  done[indice]=false;
  return porte[indice]; 
  }
}