class Metal {
  boolean comido;
  int x, y, t, r, cuadro;
  float d;
  char c;
  PImage [] sprite = new PImage[29];

  Metal(float x_, float y_, char c_) {
    x = (int)x_;
    y = (int)y_;
    c = c_;
    t = (int)random(90, 140);

    r = (int)random(360);

    if (x > 200 && x < width/2 && y > 200 && y < height-200) {
      x = (int)random(100, 300);
    }
    else if (x > width/2 && x < width-200 && y > 200 && y < height-200) {
      x = (int)random(width-300, width-100);
    }
  }

  void mostrar() {
    d = radians(r);


    pushMatrix();
    pushStyle();
    colorMode(RGB, 255, 255, 255, 100);
    tint(255, 80);
    imageMode(CENTER);
    translate(x, y);
    rotate(-d);
    scale(0.5);
    if (c == 'a') {  //Arsénico
      image(arsimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'c') {  //Cromo
      image(croimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'u') {  //Cobre
      image(cobimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'm') {  //Mercurio
      image(merimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'p') {  //Plomo
      image(ploimg[cuadro], 0, 0, t, t);
    }
    else if (c == 'z') {  //Zinc
      image(zinimg[cuadro], 0, 0, t, t);
    }
    cuadro = animarSprites(29, cuadro);
    popStyle();
    popMatrix();

    if (dos.x > x-t && dos.x < x+t && 
      dos.y > y-t && dos.y < y+t) {
      comido = true;
    }

    if (comido) {
      dos.u++;
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

