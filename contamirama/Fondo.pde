class Fondo {
  PImage[] sprite = new PImage[23];
  int cuadro;

  Fondo() {
    for (int i = 0; i < 23; i++) {
      int o = i+1;
      sprite[i] = loadImage("fondo/f ("+o+").png");
    }
  }

  void mostrar() {
    cuadro = animarSprites(23, cuadro);

    image(sprite[cuadro], 0, 0, width, height);
  }
}

