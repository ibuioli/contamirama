class Bicho {
  float x, y, mx, my, direccion, of, xof, yof, vx, vy, vd, tf, gr;
  int u,u2;
  char tipo;
  int cuadro;
  PImage [] sprite = new PImage[14];

  Bicho(float x_, float y_, float d_, char t_) {
    xof = x_;
    yof = y_;
    of = d_;
    tipo = t_;

    if (tipo == 'a') {
      vx = random(.010, .012);
      vy = random(.009, .015);
      vd = random(-.012, .012);
    }
    else if (tipo == 'b') {
      vx = random(.005, .008);
      vy = random(.006, .010);
      vd = random(.009, .020);
      gr = random(-20, 45);
    }
    else if (tipo == 'c') {
      vx = random(.007, .001);
      vy = random(.006, .009);
      vd = random(1, 3);
    }
  }

  void mover() {
    pushStyle();
    colorMode(RGB, 255, 255, 255, 100);
    tint(255, 85);
    if (tipo == 'a') {  //-------------------------a----------------------------
      of = of + vd;
      xof = xof + vx;
      yof = yof + vy;
      direccion = radians(noise(of)*width/2);

      x = (noise(xof)*width);
      y = (noise(yof)*height);
      x = lerp(x, x+mx, 0.2);
      y = lerp(y, y+my, 0.2);

      u2=u;
      if(u2>=20){u2=20;}
      pushMatrix();
      translate(x, y);
      rotate(direccion);
      noStroke();
      image(bich2_img[cuadro], 0, 0, bich2_img[cuadro].width/3+u*5, bich2_img[cuadro].height/3+u*5/3);
      cuadro = animarSprites(bich2_img.length, cuadro);
      popMatrix();

    }
    else if (tipo == 'b') {  //-------------------------b------------------------------
      xof = xof + vx;
      yof = yof + vy;
      of = of + vd;

      x = (noise(xof)*width);
      y = (noise(yof)*height);
      x = lerp(x, x+mx, 0.2);
      y = lerp(y, y+my, 0.2);
      direccion = noise(of);

      tf += 0.05;
      
      u2=u;         
      if(u2>=20){u2=20;}   
      pushMatrix();
      imageMode(CENTER);
      translate(0, sin(tf)*gr);
      translate(x, y);
      rotate(direccion);
      image(bich1_img[cuadro], 0, 0, 100+u2*5, 100+u2*5);
      cuadro = animarSprites(bich1_img.length, cuadro);
      popMatrix();

    }
    else if (tipo == 'c') {  //----------------------------------c-------------------------------
      of = of + vd;
      xof = xof + vx;
      yof = yof + vy;
      direccion = radians(of);

      x = (noise(xof)*width);
      y = (noise(yof)*height);
      x = lerp(x, x+mx, 0.2);
      y = lerp(y, y+my, 0.2);

      pushMatrix();
      imageMode(CENTER);
      translate(x, y);
      rotate(direccion);
      
      u2=u;  
      if(u2>=30){u2=20;}     
      image(bich3_img[cuadro], 0, 0, 100+u2*5, 100+u2*5);
      cuadro = animarSprites(bich3_img.length, cuadro);
      popMatrix();
    }
    popStyle();
  }
}

