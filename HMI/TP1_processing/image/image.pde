// 1. DÉCLARATION : On crée les tiroirs
PImage img, img2; 
PFont f1; 
color BG; // On déclare la variable pour la couleur de fond

void setup(){
   size(400, 600);           
   BG = color(255);          // Initialisation du fond en blanc au départ
   
   // 2. CHARGEMENT
   img = loadImage("meme.png"); 
   img.resize(400, 0);       
   
   img2 = loadImage("algerie.png"); 
   img2.resize(150, 0);      
   
   f1 = loadFont("3ds-Bold-48.vlw");
   textFont(f1, 20);         
}

void draw(){
   background(BG);           // On utilise la variable BG au lieu de "255" fixe
   
   // 3. AFFICHAGE (Système de calques)
   image(img, 0, 250);       // Le fond
   image(img2, 100, 350);    // L'image par-dessus
   
   // Bulle de texte
   fill(255);                
   ellipse(224, 134, 220, 100); 
   circle(140, 200, 30);        
   circle(120, 220, 15);        
   
   // Texte
   fill(0);                  
   textAlign(CENTER, CENTER); 
   text("1, 2, 3 viva l'Algérie !", 224, 134); 
}

//Changement de couleur uniquement au clic
void mousePressed() {
   BG = color(random(255), random(255), random(255)); 
}
