void informacion() {
  fill(255);
  int mas_;
  mas_=0;
  for (int i=0; i<textLines.length;i++) {
    String[] currentLine = split(textLines[i], ";");
    for (int j=0; j<currentLine.length;j++) {

      pushMatrix();
      if (i>=1) {
        translate(300, 0);
      }
      else {
        translate(0, 0);
      }
      text(datos[i][j], mouseX-width+10+50*i, 20+18*j); 
      popMatrix();
    }
  }
}

//keyCode - izquierda y derecha mueven el lugar
//keyCode - arriba y abajo mueven el año - 1995 - 1999 - 2004
void info2(int sel, int lug) {   
  
  time_+=1;
  if(time_>30){seg+=1; time_=0;}
  if(seg>60){min+=1; seg=0;}

  pushStyle();
  colorMode(RGB, 255, 255, 255, 100);
  noStroke();
  fill(20,40);
  ellipse(150, 0, 300, 300);
  ellipse(width-100, 0, 300, 300);
  popStyle();
  
  pushStyle();
  pushMatrix();
  colorMode(HSB, 360,100,100,100);
  translate(150,0);
  //if(map_==true){fill(0);}else{ fill(360);}
  fill(210, random(45,50)); 
  textFont(font, 48);
  //text(datos[0][lug],10,25);
  text(anio,23,50); 
  textFont(font,48);
  fill(100,60,60,random(20,50));
  text(nf(min,2)+":"+nf(seg,2),19,100);
  //text("Turbidez:"+turbio, 350, 20); text("pH:"+pH, 460, 20); text("Temp:"+temp, 350, 35);  text("Cond:"+cond, 450, 35); text("bacterias fecales:"+bacteria[1], 530, 20); text("mouseX:"+mouseX, 80, 35); text("mouseY:"+mouseY, 180, 35);
  popMatrix();
  popStyle();
  
  int porcen_0=int(map(comida[0],0,50,0,100));
  int porcen_1=int(map(comida[1],0,50,0,100));
  int porcen_2=int(map(comida[2],0,50,0,100));

  pushMatrix();  
  pushStyle();
  colorMode(HSB,360,100,100,100);
  textFont(font, 30);
  noStroke();
  translate(width-200,20);   
  tint(c_comida[1],80,80,60); image(arsimg[1],-9,-7,30,30);
  tint(c_comida[0],80,80,60); image(felimg[1],-9,24,30,30); 
  tint(c_comida[2],80,80,60); image(sulimg[1],-9,54,30,30); 
  fill(255,70); text(porcen_1+"%",30,18);  fill(c_comida[1],80,80,60); /*for(int i=0;i<comida[1];i++){rect(120-3*i,0,2,15);} noFill();noTint(); image(bich1_img[1],225,-8,15,15);*/
  fill(255,70); text(porcen_0+"%",30,47); fill(c_comida[0],80,80.60); /*for(int i=0;i<comida[0];i++){rect(120-3*i,16,2,15);} noFill();noTint(); image(bich2_img[1],225,9,15,15);*/
  fill(255,70); text(porcen_2+"%",30,81); fill(c_comida[2],80,80,60); /*for(int i=0;i<comida[2];i++){rect(120-3*i,32,2,15);} noFill();noTint(); image(bich3_img[1],225,25,15,15);*/   
  //fill(255);text(sel_+"--"+lug_+"--"+nivel[lug_-3][sel_],0,80);   
  //fill(255,80);text(tot_b+"--"+tot_m+"--"+tot_q,-200,50);  //comidas
  /*textAlign(RIGHT);
  textFont(font2, 14);
  fill(10,porcen_1);
  text("Metales",215,5);
  fill(10,porcen_0);
  text("Bacterias",215,21);
  fill(10,porcen_2);
  text("Quimicos",215,37);*/
  popStyle();
  popMatrix();

 if(porcen_0==100&&porcen_1==100&&porcen_2==100&&sel<3){   
  
   t_s[lug-3][sel]=seg;
   t_m[lug-3][sel]=min;
   nivel[lug-3][sel]=true;

   
    if(sel<=2&&nivel[lug-3][2]==false){
      n_sig=true;
      uno.u = 0;  dos.u = 0; tres.u = 0;  //vuelve a '0' lo comidos     
      time_=0; seg=0; min=0; //---tiempo---
      borra_cont();    //borra todo
      sel_+=1;
      crea_cont();     //crea nuevamente con el lugar seleccionado
      guard=true;  
    }else if(sel==2&&nivel[lug-3][2]==true){
      time_=0;
      seg=0;
      min=0;      
      n_fin=true;
    }
    
  }//-------------
  

}//-----------/info2---------------

/*void nivel_sig(){  
  pushMatrix();
  translate(0,0);  
  fill(0,200);
  rect(width/2,height/2,width,height);
  fill(255);
  textMode(CENTER);
  
 if((sel_-1)==0){                              //------------------------
  textFont(font,30);
  text("Muy bien !!!",width/3,height/2-50); 
  textFont(font,25);
  text("Ahora intenta con el año -"+anio,width/3+30,height/2);

 }else if((sel_-1)==1){                       //------------------------ 
  textFont(font,30);
  text("Genial !!!",width/3,height/2-50); 
  textFont(font,25);
  text("Solo faltaria limpiar el año -"+anio,width/3+30,height/2);
 }
  popMatrix();
    
}*/


/*void nivel_final(){  
  pushMatrix();
  translate(0,0);  
  fill(0,200);
  rect(width/2,height/2,width,height);
  fill(255);
  textMode(CENTER);  
  textFont(font,30);
  text("Felicitaciones !!!",width/3,height/2-50); 
  textFont(font,25);
  text("La zona ha quedado Limpia",width/3+30,height/2);
  popMatrix();
}*/






