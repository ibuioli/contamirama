class Quimico {
  boolean comido;
  int x, y, t, r, cuadro;
  float tf, gr, sr, d;
  char c;
  
  Quimico(float x_, float y_, char c_) {
    x = (int)x_;
    y = (int)y_;
    c = c_;
    t = (int)random(70, 90);
    
    gr = random(3, 8);
    sr = random(-0.07, 0.07);
    
    r = (int)random(360);
    
    if(x > 200 && x < width/2 && y > 200 && y < height-200){
      x = (int)random(100, 300);
    }else if(x > width/2 && x < width-200 && y > 200 && y < height-200){
      x = (int)random(width-300, width-100);
    }
  }

  void mostrar() {
    d = radians(r);
    tf += sr;
    
    pushMatrix();
    pushStyle();
    noStroke();
    imageMode(CENTER);
    translate(x, y+sin(tf)*gr);
    rotate(-d);
    colorMode(RGB, 255, 255, 255, 100);
    tint(255, 70);
    if (c == 'h') {
      image(hidimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'f') {
      image(fenimg[cuadro], 0, 0, t, t);
    }
    else if (c == 's') {
      image(sulimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'n') {
     image(ninimg[cuadro], 0, 0, t, t);
    }    
    cuadro = animarSprites(29, cuadro);
    popStyle();
    popMatrix();
    
    if (tres.x > x-t && tres.x < x+t && 
      tres.y > y-t && tres.y < y+t) {
      comido = true;
    }
    
    if (comido) {
      tres.u++;
    }
  }

  boolean fin() {
    if (atecla != tecla || comido) {
      return true;
    }
    else {
      return false;
    }
  }
}
