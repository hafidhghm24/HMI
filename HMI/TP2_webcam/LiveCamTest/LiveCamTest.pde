import gab.opencv.*;
import processing.video.*;
import java.awt.*;
PImage img,img1,img2; 


FSM mae; //machine a état
Capture video;
OpenCV opencv;
void setup() {
  size(640, 480);
  video = new Capture(this, "pipeline:autovideosrc");
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 

  video.start(); 
  mae = FSM.INITIAL;
  

}



void draw() {
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);


  
  switch(mae){
    case INITIAL:
      for (int i = 0; i < faces.length; i++) {
    
        println(faces[i].x + "," + faces[i].y);
        img = loadImage("darth_vader.png");
        img.resize(faces[i].width+80, faces[i].height+80);
        image(img, faces[i].x-50, faces[i].y-50); 
      }
      break;
      
    case ALGERIE:
      for (int i = 0; i < faces.length; i++) {
    
        println(faces[i].x + "," + faces[i].y);
        img1 = loadImage("algerie.png");
        img1.resize(faces[i].width+80, faces[i].height+80);
        image(img1, faces[i].x-50, faces[i].y-50); 
      }
      break;
      
    case MEME:      
      for (int i = 0; i < faces.length; i++) {
    
        println(faces[i].x + "," + faces[i].y);
        img2 = loadImage("meme.png");
        img2.resize(faces[i].width+80, faces[i].height+80);
        image(img2, faces[i].x-50, faces[i].y-50); 
      }
      break;
      
    default:
      break;
  }
}

void captureEvent(Capture c) {
  c.read();
}

void mousePressed() {
   mae = FSM.ALGERIE;
}
