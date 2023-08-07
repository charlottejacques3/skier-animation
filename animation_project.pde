//Charlotte Jacques
//Block 1-2 B
//Sep 18 2020

//variables -------------------------------------------------------
int cloud;
int mount1, mount2, mount3, mount4, mount5;
int chairX, chairY;
int skierX, skierY;

void setup () {//--------------------------------------------------
  size(800, 600);
  //cloud variable
  cloud = -200;
  
  //mountain variables
  mount1 = 100;
  mount2 = 300;
  mount3 = 500;
  mount4 = 700;
  mount5 = 900;
  
  //chairlift variables
  chairX = 720;
  chairY = 300;
  
  //skier variables
  skierX = 120;
  skierY = 265;
  
}

void draw () {//----------------------------------------------------
  noStroke();
  
  //sky
  background(214, 249, 255);
  
  //CLOUD===========================================================
  noStroke();
  fill(255);
  ellipse(cloud, 200, 100, 100);
  ellipse(cloud - 50, 200, 100, 100);
  ellipse(cloud + 50, 200, 100, 100);
  ellipse(cloud, 150, 100, 100);
  
  cloud = cloud + 1;
  
  if (cloud > 1000) {
    cloud = -200;
  }

  //MOUNTAINS========================================================
  
  fill(132, 143, 237);
  triangle(mount1-100, 350, mount1+100, 350, mount1, 100);//mountain1
  triangle(mount2-100, 350, mount2+100, 350, mount2, 100);//mountain2
  triangle(mount3-100, 350, mount3+100, 350, mount3, 100);//mountain3
  triangle(mount4-100, 350, mount4+100, 350, mount4, 100);//mountain4
  triangle(mount5-100, 350, mount5+100, 350, mount5, 100);//mountain5
  rect(0, 350, 800, 250);//bottom
  
  //MOUNTAINS ANIMATION=============================================
  mount1 = mount1 + 2;
  mount2 = mount2 + 2;
  mount3 = mount3 + 2;
  mount4 = mount4 + 2;
  mount5 = mount5 + 2;
  
  if(mount1 > 900) {
    mount1 = -100;
  }
  
  if(mount2 > 900) {
    mount2 = -100;
  }
  
  if(mount3 > 900) {
    mount3 = -100;
  }
  
  if(mount4 > 900) {
    mount4 = -100;
  }
  
  if(mount5 > 900) {
    mount5 = -100;
  }
  
  //SKI SLOPE========================================================
  fill(255);
  triangle(0, 600, 0, 350, 1000, 600);
  
  //CHAIRLIFT========================================================
  
  //wire
  stroke(0);
  strokeWeight(1);
  line(0, -35, 900, 200);
  
  //frame
  strokeWeight(10);
  stroke(130, 131, 142);
  line(chairX, chairY-155, chairX, chairY-80);//connector
  line(chairX, chairY-80, chairX-20, chairY);//back
  line(chairX-20, chairY, chairX-90, chairY);//seat
  
  //chair
  stroke(48, 49, 54);
  line(chairX-10, chairY-70, chairX-30, chairY-10);//back
  line(chairX-30, chairY-10, chairX-80, chairY-10);//seat
  
  //handlebar
  stroke(130, 131, 142);
  line(chairX-70, chairY, chairX-90, chairY-40);
  line(chairX-90, chairY-40, chairX-10, chairY-40);
  
  //CHAIRLIFT ANIMATION==============================================
  
  chairX = chairX - 4;
  chairY = chairY - 1;
  
  if(chairX < -100) {
    chairX = 900;
    chairY = 347;
  }
  
  //SKIER============================================================
  
  noStroke();
  //skier head
  fill(6, 24, 203);
  ellipse(skierX-5, skierY-82, 40, 52);//helmet
  fill(216, 185, 138);
  ellipse(skierX, skierY-75, 37, 50);//head
  rect(skierX-10, skierY-55, 20, 15);//neck
  
  //skier face
  ellipse(skierX+18, skierY-75, 8, 8);//nose
  fill(255);
  ellipse(skierX+12, skierY-84, 8, 8);//whites
  fill(59, 36, 27);
  ellipse(skierX+14, skierY-84, 4, 4);//eyeball
  fill(157, 90, 63);
  ellipse(skierX+12, skierY-65, 12, 8);//mouth
  
  //skier jacket
  fill(6, 100, 27);
  ellipse(skierX, skierY, 40, 90); 
  rect(skierX-17.5, skierY-25, 35, 70);//jacket
  rect(skierX+5, skierY-35, 65, 12);//top arm
  rect(skierX+5, skierY-20, 65, 9);//bottom arm
  fill(216, 185, 138);
  ellipse(skierX+70, skierY-29, 15, 15);//top hand
  ellipse(skierX+68.5, skierY-14, 15, 15);//bottom hand
  
  //skier pants
  fill(44, 49, 45);
  rect(skierX-17.5, skierY+45, 35, 80);//pants
  fill(132, 143, 237);
  triangle(skierX+5, skierY+125, skierX-5, skierY+125, skierX, skierY+65);//gap
  
  //first pole
  stroke(0);
  strokeWeight(3);
  line(skierX+65, skierY-7, skierX+65, skierY+140);
  
  //skis
  stroke(255, 52, 106);
  strokeWeight(10);
  line(skierX-100, skierY+105, skierX+110, skierY+165);//bottom ski
  line(skierX-100, skierY+92, skierX+110, skierY+152);//top ski
    
  //skier boots
  noStroke();
  fill(23, 40, 188);
  rect(skierX-18, skierY+95, 15, 30);//left boot leg
  rect(skierX+3, skierY+95, 15, 30);//right boot leg
  stroke(23, 40, 188);
  strokeWeight(10);
  line(skierX-14, skierY+127, skierX-3, skierY+131);//left boot
  line(skierX+7, skierY+122, skierX+18, skierY+125);//right boot
  
  //second poles
  stroke(0);
  strokeWeight(3);
  line(skierX+70, skierY-22, skierX+70, skierY+175);
  line(skierX+67, skierY+170, skierX+73, skierY+170);
  
  //SKIER ANIMATION==================================================
  
  skierX = skierX + 8;
  skierY = skierY + 2;
  
  if(skierX > 900) {
    skierX = -100;
    skierY = 210;
  }
}
