class Mapa{
  PGraphics pm1;
  float nu1;
  int[][] lug_a = {{1122,143},{1076,201},{1057,211},{1038,212},{1027,221},{1017,227},{1001,226},{996,214},{975,219},{945,218},{932,220},{922,228},{906,249},{891,271},{878,292},{860,313},{824,368},{817,377},{775,427},{749,455},{738,467},{703,500},{638,529},{514,503},{154,708},{16,786}};
  PImage f_basu,rad,eco;
  
  Mapa(){
    pm1=createGraphics(901,600,P3D);
    i_map = loadImage("mapa_evi.png"); 
    nu1=1;
    f_basu = loadImage("fondo_basu2.png");
    rad = loadImage("radiactivo.png");
    eco = loadImage("ecologico.png");
  }
  
void cargar(int selec,int an_){
  float xm_=-map(mouseX,0,width,0,width/2-220); 
  float ym_=-map(mouseY,0,height,0,height/2-170);
   
  pm1.beginDraw(); //--------------------
  pm1.colorMode(HSB,360,100,100);
  pm1.pushMatrix();
  pm1.background(0);
  pm1.translate(xm_,ym_);
  pm1.rectMode(CENTER);   
  pm1.image(i_map,0,0);
  pm1.fill(360,90,95);
  pm1.noStroke();
  pm1.ellipse(lug_a[selec-3][0],lug_a[selec-3][1],10,10);
  pm1.popMatrix();

 if(selec<=lug_a.length){
  pm1.pushMatrix(); 
  pm1.pushStyle();
  pm1.translate(xm_-150,ym_+65);
  pm1.noStroke();
  pm1.textFont(font,20);
  //for(int i=0;i<lug_a.length;i++){   pg1.ellipse(lug_a[i][0],lug_a[i][1],10,10);  }
  pm1.fill(0,210);
  pm1.stroke(50,200);
  pm1.rect(lug_a[selec-3][0],lug_a[selec-3][1]+20,300,170,5,1,10,10);
  pm1.fill(255);
  pm1.text(datos[0][selec],lug_a[selec-3][0],lug_a[selec-3][1]-40,280,40);
  pm1.text("Turbidez: "+turbio,lug_a[selec-3][0]-140,lug_a[selec-3][1]-10);
  pm1.text("Temperatura: "+temp,lug_a[selec-3][0]-140,lug_a[selec-3][1]+8);
  pm1.text("Conductividad: "+cond,lug_a[selec-3][0]-140,lug_a[selec-3][1]+26);
  pm1.text("Bacterias Totales: "+map(bacteria[0], 0, 2000000000, 0, 2000),lug_a[selec-3][0]-140,lug_a[selec-3][1]+44);
  pm1.text("1995:",lug_a[selec-3][0]-140,lug_a[selec-3][1]+62);
  pm1.text("1999:",lug_a[selec-3][0]-140,lug_a[selec-3][1]+80);
  pm1.text("2004:",lug_a[selec-3][0]-140,lug_a[selec-3][1]+98);
  pm1.noStroke();
  pm1.smooth();
  
  //-----------------1995 true o false-------------------
  textFont(font2,18);
  if(nivel[selec-3][0]==true){
    pm1.tint(100,80,80);  
    pm1.image(eco,lug_a[selec-3][0]-110,lug_a[selec-3][1]+48,15,15);  //ecologico
    pm1.fill(100,80,80);   
    pm1.text(t_m[selec-3][0]+":"+t_s[selec-3][0],lug_a[selec-3][0]-90,lug_a[selec-3][1]+63);  // tiempo que tardo en superar el nivel
  }else{
    pm1.tint(360,90,90);
    pm1.image(rad,lug_a[selec-3][0]-110,lug_a[selec-3][1]+48,15,15); //radiacion
  }
  //-----------------1999 true o false---------------------------
  if(nivel[selec-3][1]==true){
    pm1.tint(100,80,80);
    pm1.image(eco,lug_a[selec-3][0]-110,lug_a[selec-3][1]+65,15,15);   //ecologico
    pm1.fill(100,80,80);   
    pm1.text(t_m[selec-3][1]+":"+t_s[selec-3][1],lug_a[selec-3][0]-90,lug_a[selec-3][1]+80);  // tiempo que tardo en superar el nivel
  }else{
    pm1.tint(360,90,90);
    pm1.image(rad,lug_a[selec-3][0]-110,lug_a[selec-3][1]+65,15,15);   //radiacion
  }
  //-----------------2004 true o false----------------------------
  if(nivel[selec-3][2]==true){
    pm1.tint(100,80,80);   
    pm1.image(eco,lug_a[selec-3][0]-110,lug_a[selec-3][1]+83,15,15);  //ecologico 
    pm1.fill(100,80,80);   
    pm1.text(t_m[selec-3][2]+":"+t_s[selec-3][2],lug_a[selec-3][0]-90,lug_a[selec-3][1]+98);  // tiempo que tardo en superar el nivel
  }else{
    pm1.tint(360,90,90);
    pm1.image(rad,lug_a[selec-3][0]-110,lug_a[selec-3][1]+83,15,15);  //radiacion
  }
    
  pm1.popStyle();
  pm1.popMatrix();
  }
  pm1.endDraw(); //-----------------
}
void ver(){  
  pushMatrix();
  rectMode(CENTER);
  translate(width/2,height/2);
  scale(nu1); 
  image(pm1,-pm1.width/2,-pm1.height/2-15); 
  image(f_basu,-f_basu.width/2,-f_basu.height/2); 
  popMatrix(); 
}


}//-------objeto---------
