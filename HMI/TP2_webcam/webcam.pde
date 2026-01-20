/**
 * Projet webcam
 */
import processing.video.*;

Capture cam;

void setup() {
  // taille du sketch
  size(640,480);
  
  //créer une nouvel objet webcam
  cam=new Capture(this,640,480, "pipeline:autovideosrc"); // permet de trouver la caméra interne
  // démarrer la webcam
  cam.start();
}

void draw(){
  // afficher l'image dans la fenêtre
  image(cam,0,0);
}

// fonction callback : nouvelle image disponible
void captureEvent(Capture c) {
  c.read(); // lit l'image disponible sur la webcam
}
