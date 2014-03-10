class Bacteria {
  boolean comido;
  int x, y, t, r, cuadro;
  float w, v, d;
  char c;

  Bacteria(float x_, float y_, char c_) {
    x = (int)x_;
    y = (int)y_;
    c = c_;
    t = (int)random(100, 160);;

    r = (int)random(360);

    if (x > 200 && x < width/2 && y > 200 && y < height-200) {
      x = (int)random(100, 300);
    }
    else if (x > width/2 && x < width-200 && y > 200 && y < height-200) {
      x = (int)random(width-300, width-100);
    }
  }

  void mostrar() {
    if (frameCount % 10 == 0) {
      v = random(50);
    }
    w = lerp(w, v, .1);
    d = radians(r);

    pushMatrix();
    pushStyle();
    noStroke();
    imageMode(CENTER);
    colorMode(RGB, 255, 255, 255, 100);
    tint(255, 70);
    translate(x, y);
    rotate(d);
    if (c == 'f') {
      image(felimg[cuadro], 0, 0, t+w, t+w);
    }
    else if (c == 't') {
      image(totimg[cuadro], 0, 0, t+w, t+w);
    }
    
    cuadro = animarSprites(29, cuadro);

    popStyle();
    popMatrix();

    if (uno.x > x-t && uno.x < x+t && 
        uno.y > y-t && uno.y < y+t) {       
      comido = true;
    }

    if (comido) {
      uno.u++;
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

