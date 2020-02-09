
void setup(){
  size(500, 500);
  background(10, 10, 100);
  noLoop();
}

void draw(){
 for(int i=0; i<width;i++){
   for(int j=0;j<height;j++){
    if(isInJuliaSet(i,j)){
       stroke(255);
       point(i,j);
    }
    else{
       stroke(0);
       point(i,j);
    }
   }
 }
}

boolean isInJuliaSet(float x, float y){
 int maxTimes = 100;
 float sx = map(x, 0, width, -2, 2);
 float sy = map(y, 0, height, -2, 2);
 
 int i = 0;
 
 while(i < maxTimes){
  float real = sx * sx - sy * sy;
  float imag = 2 * sx * sy;
  sx = real + 0.285;
  sy = imag + 0.01;
  if(sx * sx + sy * sy > 4)
    return false;
   i++;
 }
 return true;
}
