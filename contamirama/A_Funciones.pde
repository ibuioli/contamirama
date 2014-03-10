void asignacion(){   
  
  pH = datos_n[1+sel_][lug_];  //todos_[0]
  cond = datos_n[4+sel_][lug_];//todos_[1]
  temp = datos_n[7+sel_][lug_]; //todos_[2]  
  turbio = datos_n[13+sel_][lug_];  //todos_[3]
  bacteria[0] = datos_n[16+sel_][lug_];    //Bacterias Coliformes Totales //todos_[4]
  bacteria[1] = datos_n[19+sel_][lug_];    //Bacterias Coliformes Fecales //todos_[5]
  dB = datos_n[22+sel_][lug_]; //todos_[6]
  dQ = datos_n[25+sel_][lug_]; //todos_[7]
  quimico[0] = datos_n[28+sel_][lug_];     //Hidrocarburos Totales      //todos_[8]
  quimico[1] = datos_n[31+sel_][lug_];     //Fenoles     //todos_[9]
  quimico[2] = datos_n[34+sel_][lug_];     //Sulfuros    //todos_[10]
  quimico[3] = datos_n[37+sel_][lug_];     //Nitrógeno Total Kjeldhal     //todos_[11]
  metal[0] = datos_n[43+sel_][lug_];       //arsenico    //todos_[12]
  metal[1] = datos_n[46+sel_][lug_];       //cromo       //todos_[13]
  metal[2] = datos_n[49+sel_][lug_];       //cobre      //todos_[14]
  metal[3] = datos_n[52+sel_][lug_];       //mercurio     //todos_[15]
  metal[4] = datos_n[55+sel_][lug_];       //plomo    //todos_[16]
  metal[5] = datos_n[58+sel_][lug_];       //zinc     //todos_[17]
  
  tbac = map(bacteria[0], 0, 2000000000, 0, 20);
  fbac = map(bacteria[1], 0, 200000000, 0, 20);
  
  //--------------------------------------------  
  
  todos_[0]=pH;todos_[1]=cond;todos_[2]=temp;todos_[3]=turbio;  
  todos_[4]=bacteria[0];todos_[5]=bacteria[1];
  todos_[6]=dB;todos_[7]=dQ;
  todos_[8]=quimico[0];  todos_[9]=quimico[1];  todos_[10]=quimico[2];  todos_[11]=quimico[3];  
  todos_[12]=metal[0];todos_[13]=metal[1];todos_[14]=metal[2];todos_[15]=metal[3];todos_[16]=metal[4];todos_[17]=metal[5];todos_[18]=metal[0]; 
    
  float t_bac=fbacterias.size()+tbacterias.size();
  float t_met=arsenicos.size()+cromos.size()+cobres.size()+mercurios.size()+plomos.size()+zincs.size();
  float t_qui=hidrocarburos.size()+fenoles.size()+sulfuros.size()+nitrogenos.size();
  
   if(guard){
    tot_b=t_bac;    
    tot_m=t_met;
    tot_q=t_qui;
    guard=false;
  } 
  
}

void set_asig(){ 
  
  sel_=0;
  if(nivel[lug_-3][sel_]==false){ sel_=0; }else
  if(nivel[lug_-3][sel_+1]==false){ sel_=1; }else
  if(nivel[lug_-3][sel_+2]==false){ sel_=2; }    
   
   anio=0;
   if(sel_==0){anio=1995;}else if(sel_==1){anio=1999;}else if(sel_==2){anio=2004;}
   
   comida[0]=constrain(map(uno.u,0,tot_b,0,50),0,50);
   comida[1]=constrain(map(dos.u,0,tot_m,0,50),0,50);
   comida[2]=constrain(map(tres.u,0,tot_q,0,50),0,50);  
    
   c_comida[0]=int(constrain(map(uno.u,0,tot_b,0,100),0,100));
   c_comida[1]=int(constrain(map(dos.u,0,tot_m,0,100),0,100));
   c_comida[2]=int(constrain(map(tres.u,0,tot_q,0,100),0,100));
  
}//---------/set_asig-----------------


int animarSprites(int numCuadros, int cuadro) {
  
  cuadro++;
  
  if (cuadro == numCuadros) {
    cuadro = 0;
  }
  
  return cuadro;  //devuelve el cuadro
}

