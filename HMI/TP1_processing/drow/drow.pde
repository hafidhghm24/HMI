void setup(){
   size(800,600); 
   fullScreen();
   
   frameRate(200); //temp daffichage
}

void draw(){ //loop
    fill(random(255), random(255), random(255));
    circle(random(width), random(height), random(100));
    println(frameRate);
}
