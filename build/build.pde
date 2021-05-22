//VAR TIEMPO
int second = second();  // Values from 0 - 59
int minute = minute();  // Values from 0 - 59
int hour = hour();    // Values from 0 - 23
int day = day();    // Values from 1 - 31
int month = month();  // Values from 1 - 12
int year = year();   // 2003, 2004, 2005, etc.

String timestamp = str(year)+str(month)+str(day)+str(hour)+str(minute)+str(second);

color[] colores = {#F2BE24, #57523E, #D94C1A, #A4A68A};

float secciones = 3;
float comparacion = secciones*secciones;
float tamano = 500;

void setup() {
	size(1800, 1800);
	// FONDO DEL CIRCULO
	// background(#FFF28C);
	// background(#FF0005);
	background(#FFFFFF);

	// FONDO DEL CUADRADO
	// background(#6593A6);

	noLoop();
	noStroke();
}

void draw() {

	// if (frameCount%60 == 0) {

		float anchoSecc = width/secciones;
		float altoSecc = height/secciones;

		float margenX = (anchoSecc - tamano)/2;
		float margenY = (altoSecc - tamano)/2;

		for (int j = 0; j < secciones; j++){

			for (int i = 0; i < secciones; i++){
				float desplX = (anchoSecc*i) + margenX + tamano/2;
				float desplY = (altoSecc*j) + margenY + tamano/2;

				pushMatrix();
				translate(desplX, desplY);

				// DIBUJAR EL CIRCULO
				drawCircle(0, 0, tamano, 5);

				// // DIBUJAR EL CUADRADO
				// drawRect(-tamano/2,-tamano/2, tamano, 5);

				popMatrix();
			}
		}
	// }

	saveFrame("C:/users/escri/Pictures/Processing/Recursive/screenshot/recursive"+timestamp+".jpeg");

}

void drawCircle(float x, float y, float size, int level) {
	// fill(#FFFFFF, 50);
	fill(colores[(int)random(colores.length)]);
	circle(x,y,size);

	if(level > 1) {
		level--;
		float theta = random (TWO_PI);
		drawCircle(x + size/4  * cos(theta), y +  size/4 * sin(theta),size/2,level);
	}
}


void drawRect (float x, float y, float size, int level) {
	stroke(#F2CF63);
	rect(x, y, size, size);

	if(level > 1) {
		level--;
		float theta = random (TWO_PI);
		drawRect(x + size/4 * (1 + cos(theta)), y + size/4 + size/4 * sin(theta), size/2, level);
	}
}