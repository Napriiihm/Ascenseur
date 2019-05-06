void monter(){
  y=y-2;
}

void descendre(){
  y=y+2;
}

void waitt(){
  if (diffetage==0){
    if (timeok==false){
     time=millis(); 
     timeok=true;
    }
  } else {
   timeok=false; 
  }
    if ((millis()-time)<2000 || etagecall[0]==0){
    wait=true;
  } else {
    wait=false;
  }
}