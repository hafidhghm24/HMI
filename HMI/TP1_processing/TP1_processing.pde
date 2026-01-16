/** 
  Utiliser des primitives graphiques dans un script Processing
**/

/* Variables "globales" du sketch [En réalité, attributs de la classe PApplet] */
color GREEN = color(0,255,0);
color BLUE = color(0,0,255);
color SEMI_TRANSPARENT_RED = color(255,0,0,120);

void settings() {
  size(400,300); // créer une fenêtre de taille 400x300
}

void setup(){ // initialiser le sketch

}
  
void draw(){ // boucle infinie de dessin
  background(0); // redessiner la fenêtre en noir - 0-->noir / 255-->blanc  
  noStroke(); // ne pas dessiner le contour des objets dessinés
  
  /** dessin des trois formes **/
  // dessin du cercle
  fill(GREEN);
  circle(200,200,100);  
  // dessin du carré bleu
  fill(BLUE);
  square(50,50,100);
  //dessun du triangle
  fill(SEMI_TRANSPARENT_RED);
  triangle(40,20,250,150,80,250); 
}
  
