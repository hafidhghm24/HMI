size(600,400); // créer une fenêtre de taille 400x300
background(255);
stroke(127);

//dessiner le cadriage
for(int i=100;i<500;i=i+100)
  line(0,i,width,i);
for(int j=100;j<700;j=j+100)
  line(j,0,j,height);

//dessiner les lignes
stroke(0);
line(0,0,400,400);

noStroke();
fill(129,129,129);
circle(200,100,100);

stroke(0);
line(200,100,400,300);

noStroke();
fill(252,196,33);
circle(500,200,100);

strokeWeight(4);
strokeCap(SQUARE); //mettre les bord de la ligne 'carré'

stroke(0);
line(400,300,500,200);

//dessiner le cercle
noStroke(); //pas de bordures



fill(252,196,33);
circle(120,100,100);
