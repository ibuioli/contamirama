
class Turbidez {
  PImage[] sprite = new PImage[23];
  float alfa;
  int cuadro;

  Turbidez() {
    for (int i = 0; i < 23; i++) {
      int o = i+1;
      sprite[i] = loadImage("turbidez/tu ("+o+").png");
    }
  }

  void mostrar() {
    alfa = map(turbio, 0, 300, 0, 90);
    if (alfa >= 90) { //Pequeño Hack para la opacidad
      alfa = 90;
    }
    cuadro = animarSprites(23, cuadro);
  }

  void ver() {
    pushStyle();
    tint(255, alfa);
    image(sprite[cuadro], 0, 0, width, height);
    popStyle();
  }
}

