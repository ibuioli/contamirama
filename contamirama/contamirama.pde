PFont font;
PFont font2;

ArrayList arsenicos, cromos, cobres, mercurios, plomos, zincs, 
fbacterias, tbacterias, hidrocarburos, fenoles, sulfuros, nitrogenos; //Listas de Contaminantes

String[] textLines;
String[][] datos = new String[61][61];
float[][] datos_n = new float[61][61];

PImage [] sulimg = new PImage[29];
PImage [] ninimg = new PImage[29];
PImage [] hidimg = new PImage[29];
PImage [] fenimg = new PImage[29];
PImage [] arsimg = new PImage[29];
PImage [] croimg = new PImage[29];
PImage [] cobimg = new PImage[29];
PImage [] merimg = new PImage[29];
PImage [] ploimg = new PImage[29];
PImage [] zinimg = new PImage[29];
PImage [] totimg = new PImage[29];
PImage [] felimg = new PImage[29];

PImage [] bich1_img = new PImage[28];
PImage [] bich2_img = new PImage[15];
PImage [] bich3_img = new PImage[30];

PImage nf;

int sel_=0, lug_=3, anio=0;
int tecla=0, atecla=-1;
float[] quimico = new float[4], metal = new float[6], bacteria = new float[2];
float turbio, temp, pH, cond, dB, dQ;
float tbac;
float fbac;
float[] todos_=new float[19];
float[]  comida = new float[3];
int[]  c_comida = new int[3];

float tot_b;
float tot_m;
float tot_q;

boolean guard=true;

Turbidez tu;
Fondo fo;
Bicho uno, dos, tres;
Mapa ma;

boolean[][] nivel = new boolean[24][3];
int[][] t_s = new int[24][3];
int[][] t_m = new int[24][3];
int time_=0;
int seg=0;
int min=0;

boolean map_=true;
PImage i_map;
float mx1, my1;

int nn=0;
int nn2=0;
boolean n_sig=false;
boolean n_fin=false;

void setup() {    
  background(0);
  //String[] fontList = PFont.list(); println(fontList);
  font = loadFont("OldPress-48.vlw");  
  font2= createFont("georgia", 32);
  colorMode(HSB, 360, 100, 100, 100);
  size(1024, 768, P3D);
  frameRate(30);

  noCursor();

  //Cargar Datos
  textLines = loadStrings("bd2.csv");  
  for (int i = 0; i < textLines.length; i++) {
    String[] currentLine = split(textLines[i], ";");
    for (int j = 0; j < currentLine.length; j++) {
      datos[i][j] = currentLine[j];
      datos_n[i][j] = float(currentLine[j]);
    }
  }

  for (int i=0;i<comida.length;i++) {
    comida[i]=0;
  }
  
  for(int ix=0;ix<23;ix++){
   for(int iy=0;iy<3;iy++){
      nivel[ix][iy]=false;
      t_s[ix][iy]=0;
      t_m[ix][iy]=0;
   }
  }
  
  nf = loadImage("nf.png");
  
  //mapa(zom_,lug_);

  ////////////////////////////////
  tu = new Turbidez();
  fo = new Fondo();
  uno = new Bicho(random(width), random(height), random(360), 'a');
  dos = new Bicho(random(width), random(height), random(360), 'b');
  tres = new Bicho(random(width), random(height), random(360), 'c');
  ma = new Mapa();
  ////////////////////////////////
  arsenicos = new ArrayList();
  cromos = new ArrayList();
  cobres = new ArrayList();
  mercurios = new ArrayList();
  plomos = new ArrayList();
  zincs = new ArrayList();

  fbacterias = new ArrayList();
  tbacterias = new ArrayList();

  hidrocarburos = new ArrayList();
  fenoles = new ArrayList();
  sulfuros = new ArrayList();
  nitrogenos = new ArrayList();
  ////////////////////////////////
  for (int i = 0; i < 29; i++) {
    int o = i+1;
    sulimg[i] = loadImage("contaminantes/sulfuro/q ("+o+").png");
    ninimg[i] = loadImage("contaminantes/nitrogeno/q ("+o+").png");
    hidimg[i] = loadImage("contaminantes/hidrocarburo/q ("+o+").png");
    fenimg[i] = loadImage("contaminantes/fenol/q ("+o+").png");
    arsimg[i] = loadImage("contaminantes/arsenico/m ("+o+").png");
    croimg[i] = loadImage("contaminantes/cromo/m ("+o+").png");
    cobimg[i] = loadImage("contaminantes/cobre/m ("+o+").png");
    merimg[i] = loadImage("contaminantes/mercurio/m ("+o+").png");
    ploimg[i] = loadImage("contaminantes/plomo/m ("+o+").png");
    zinimg[i] = loadImage("contaminantes/zinc/m ("+o+").png");
    totimg[i] = loadImage("contaminantes/totales/b ("+o+").png");
    felimg[i] = loadImage("contaminantes/fecales/b ("+o+").png");
  }

  for (int i = 0; i < bich1_img.length; i++) {
    int o = i+1;
    bich1_img[i] = loadImage("bichos/b2/b ("+o+").png");
  }
  
  for (int i = 0; i < bich2_img.length; i++) {
    int o = i+1;
    bich2_img[i] = loadImage("bichos/b1/b ("+o+").png");
  }
  
  for (int i = 0; i < bich3_img.length; i++) {
    int o = i+1;
    bich3_img[i] = loadImage("bichos/b3/b ("+o+").png");
  }

}//-------setup--------------


void draw() {  
  background(17, 51, 10);
  asignacion();


  if (map_==true) {   //-------------mapa true----------------------------------------

    if (ma.nu1<1){ ma.nu1+=0.1; }     // mapa abre

    lug_=int(map(mouseX, 100, width, 26, 3));    //selecciona el lugar con mouseX 
    lug_=constrain(lug_, 3, 26);    
   
    ma.cargar(lug_, anio);
    ma.ver();
 
  }else{            //---------mapa false------------------------------------------------------
  set_asig();
  
  if(ma.nu1>0){ ma.nu1-=0.1; ma.ver();}     // mapa cierra
      
  if(n_sig){                                           //Genial y Muy bien 
      nn++;   
      if(nn>5){ n_sig=false;nn=0;}    
  }else if(n_fin){                                     // Felicitaciones!!
     nn2++;   
     if(nn2>5){ n_fin=false;nn2=0; map_=true;}       
  }else{                                               // animacion
    
    fo.mostrar();
    tu.mostrar();  
    muestra_cont();    //Muestra Contaminantes
    uno.mover();       //Muestra Bichos
    dos.mover();
    tres.mover();

    tu.ver();
    info2(sel_, lug_);
    image(nf, 0, 0);
  }                      
      
  } //------------/mapa false-----------------------------------------------------

  if (tecla != atecla) {
    crea_cont();
  }
  //informacion();   //informacsion del CSV
  atecla = tecla;
} //-------draw--------------


void keyPressed() {
  if (keyCode==DOWN&&sel_>0) {
    sel_-=1;
    tecla++;
  }
  else if (keyCode==UP&&sel_<2) {
    sel_+=1;
    tecla++;
  }

  if (keyCode==LEFT&&lug_>3) {
    lug_-=1;
    tecla++;
  }
  else if (keyCode==RIGHT&&lug_<26) {  //34
    lug_+=1;
    tecla++;
  }

  if (key=='m') {
    map_=!map_;
  }
  
 if(key=='o'){
   comida[0]=50;
   comida[1]=50;
   comida[2]=50;
 }
  
}//----key----

void mousePressed() {

  if (mouseButton==LEFT) {
    if (map_==true&&nivel[lug_-3][2]==false){    //solo si el ultimo nivel esta sin completar

      /*Vuelve al tamaño original a los Bichos*/
      uno.u=0; dos.u=0; tres.u=0;
      time_=0; seg=0; min=0;
      //----------------------------------
      borra_cont();    //borra todo 
      crea_cont();     //crea nuevamente con el lugar seleccionado
      guard=true;
      map_=false;
    }
    else {
      map_=true;
    }
  }
} //-----mouse presionado----

void mouseMoved() {
  uno.mx = map(mouseX, 0, width, -width, width);
  uno.my = map(mouseY, 0, height, -height, height);

  dos.mx = map(mouseX, 0, width, -width, width);
  dos.my = map(mouseY, 0, height, -height, height);

  tres.mx = map(mouseX, 0, width, -width, width);
  tres.my = map(mouseY, 0, height, -height, height);
}//-----mouse presionado----

