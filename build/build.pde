//EMPEZANDO
void setup() {
	size(512, 512);
	background(#FFF28C);

	noLoop();
	noFill();
}

void draw() {
	drawCircle(width/2, height/2, 500,5);
}

void drawCircle(float x, float y, float size, int level) {
	stroke(#FF0005);
	circle(x,y,size);

	if(level > 1) {
		level--;
		float theta = random (2*PI);
		drawCircle(x + size/4  * cos(theta), y +  size/4 * sin(theta),size/2,level);
	}
}