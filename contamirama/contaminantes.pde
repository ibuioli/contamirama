
void crea_cont(){    //se carga con el mousePressed LEFT en map_==true
  
  String  [] let= {"a","c","u","m","p","z","f","t","h","s","f","s","n"};  //capas dsp lo use para hacer un array que englobe todo, usando tmb, todos_[]
    
    for (int i=0;i < metal[0]*10; i++) {arsenicos.add(new Metal(random(150, width-150), random(50, height-50), 'a'));}
    for (int i=0;i < metal[1]*10; i++) {cromos.add(new Metal(random(150, width-150), random(50, height-50), 'c'));}
    for (int i=0;i < metal[2]*10; i++) {cobres.add(new Metal(random(150, width-150), random(50, height-50), 'u'));}
    for (int i=0;i < metal[3]*10; i++) {mercurios.add(new Metal(random(150, width-150), random(50, height-50), 'm'));}
    for (int i=0;i < metal[4]*10; i++) {plomos.add(new Metal(random(150, width-150), random(50, height-50), 'p'));}
    for (int i=0;i < metal[5]*10; i++) {zincs.add(new Metal(random(150, width-150), random(50, height-50), 'z'));}
    
    for (int i=0;i < fbac; i++) {fbacterias.add(new Bacteria(random(150, width-150), random(50, height-50), 'f'));}
    for (int i=0;i < tbac; i++) {tbacterias.add(new Bacteria(random(150, width-150), random(50, height-50), 't'));}  
    
    for (int i=0;i < quimico[0]*5; i++) {hidrocarburos.add(new Quimico(random(150, width-150), random(50, height-50), 'h'));}
    for (int i=0;i < quimico[1]*5; i++) {fenoles.add(new Quimico(random(150, width-150), random(50, height-50), 'f'));}
    for (int i=0;i < quimico[2]*5; i++) {sulfuros.add(new Quimico(random(150, width-150), random(50, height-50), 's'));}
    for (int i=0;i < quimico[3]*5; i++) {nitrogenos.add(new Quimico(random(150, width-150), random(50, height-50), 'n'));}   
}

void muestra_cont(){  
// ---- muestra contaminantes----------------------------------------
  for (int i = arsenicos.size()-1; i >= 0; i--){ Metal arsenico = (Metal) arsenicos.get(i); arsenico.mostrar();  if (arsenico.fin()) { arsenicos.remove(i); } }
  for (int i = cromos.size()-1; i >= 0; i--){ Metal cromo = (Metal) cromos.get(i); cromo.mostrar();  if (cromo.fin()) { cromos.remove(i); }  }
  for (int i = cobres.size()-1; i >= 0; i--){  Metal cobre = (Metal) cobres.get(i); cobre.mostrar();  if (cobre.fin()) { cobres.remove(i); }  }
  for (int i = mercurios.size()-1; i >= 0; i--){ Metal mercurio = (Metal) mercurios.get(i); mercurio.mostrar(); if (mercurio.fin()) { mercurios.remove(i); } }
  for (int i = plomos.size()-1; i >= 0; i--){ Metal plomo = (Metal) plomos.get(i); plomo.mostrar(); if (plomo.fin()) { plomos.remove(i); } }
  for (int i = zincs.size()-1; i >= 0; i--){ Metal zinc = (Metal) zincs.get(i); zinc.mostrar(); if (zinc.fin()) { zincs.remove(i); } }  
// --------------- muestra bacterias-------------------------
  for (int i = fbacterias.size()-1; i >= 0; i--){ Bacteria fbacteria = (Bacteria) fbacterias.get(i); fbacteria.mostrar(); if(fbacteria.fin()){ fbacterias.remove(i); } }
  for (int i = tbacterias.size()-1; i >= 0; i--){ Bacteria tbacteria = (Bacteria) tbacterias.get(i); tbacteria.mostrar(); if(tbacteria.fin()){ tbacterias.remove(i); } }
//------------------muestra hidrocarburos--------------------
  for (int i = hidrocarburos.size()-1; i >= 0; i--){ Quimico hidrocarburo = (Quimico) hidrocarburos.get(i);  hidrocarburo.mostrar(); if (hidrocarburo.fin()) { hidrocarburos.remove(i); } }
  for (int i = fenoles.size()-1; i >= 0; i--){ Quimico fenole = (Quimico) fenoles.get(i); fenole.mostrar(); if (fenole.fin()) { fenoles.remove(i); }  }
  for (int i = sulfuros.size()-1; i >= 0; i--){ Quimico sulfuro = (Quimico) sulfuros.get(i); sulfuro.mostrar(); if (sulfuro.fin()) { sulfuros.remove(i); }  }
  for (int i = nitrogenos.size()-1; i >= 0; i--){  Quimico nitrogeno = (Quimico) nitrogenos.get(i);  nitrogeno.mostrar(); if (nitrogeno.fin()) { nitrogenos.remove(i); } }
} 

void borra_cont(){
 // --------------- borra metales-------------------------
  for (int i = arsenicos.size()-1; i >= 0; i--){ arsenicos.remove(i); }
  for (int i = cromos.size()-1; i >= 0; i--){ cromos.remove(i); }
  for (int i = cobres.size()-1; i >= 0; i--){ cobres.remove(i); }
  for (int i = mercurios.size()-1; i >= 0; i--){ mercurios.remove(i); }  
  for (int i = plomos.size()-1; i >= 0; i--){ plomos.remove(i); }
  for (int i = zincs.size()-1; i >= 0; i--){ zincs.remove(i); } 
 // --------------- borra bacterias-------------------------
  for (int i = fbacterias.size()-1; i >= 0; i--){ fbacterias.remove(i); }
  for (int i = tbacterias.size()-1; i >= 0; i--){ tbacterias.remove(i); }  
  //------------------borra hidrocarburos--------------------  
  for (int i = hidrocarburos.size()-1; i >= 0; i--){ hidrocarburos.remove(i); }
  for (int i = fenoles.size()-1; i >= 0; i--){ fenoles.remove(i); }
  for (int i = sulfuros.size()-1; i >= 0; i--){ sulfuros.remove(i); }
  for (int i = nitrogenos.size()-1; i >= 0; i--){nitrogenos.remove(i); }
 
}
  
  
  


