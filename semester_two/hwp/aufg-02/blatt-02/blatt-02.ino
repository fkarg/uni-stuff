// display test: write some data to the lcd

/* Connections:
 R/S : Pin 3 | 2
 R/W : not connected
 E   : Pin 4 | 3
 DB4 : Pin 6 | 4
 DB5 : Pin 7 | 5
 DB6 : Pin 8 | 7
 DB7 : Pin 9 | 8
*/

// include LCD functions:
// #include <LiquidCrystal.h>

// define the LCD screen
// LiquidCrystal lcd(3, 4, 6, 7, 8, 9);

#define speed spd

// defining values for motor-stuff
int motorPinA1 = 10;
int motorPinA2 = 11;
int motorPinB1 = 6;
int motorPinB2 = 9;

// defining variables for patterns
int drivingPattern = 0;
int spirale = 10;

// define ultrasonic pins
int ultrasonicPin = 13;



void setup()
{
  // setting motor-pins to output
  pinMode(motorPinA1, OUTPUT);
  pinMode(motorPinA2, OUTPUT);
  pinMode(motorPinB1, OUTPUT);
  pinMode(motorPinB2, OUTPUT);

  // declaring pin for ultrasonic sensor
  pinMode(ultrasonicPin, OUTPUT);

  delay(500);
}



void loop() {

  //reading the value
  int but = analogRead(0);

  // selecting the correct button.
  if (but <= 5) {
    drivingPattern = 1;
  } else if (but >= 238 && but <= 250) {
    drivingPattern = 2;
  } else if (but >= 468 && but <= 480) {
    drivingPattern = 3;
  } else if (but >= 670 && but <= 683) {
    drivingPattern = 4;
  } else if (but >= 820 && but <= 840) {
    drivingPattern = 5;
  }


  if (drivingPattern == 1) {
    driveRectangle();
  } else if (drivingPattern == 2) {
    driveCircle();
  } else if (drivingPattern == 3) {
    avoidObstacles();
  } else if (drivingPattern == 4) {
    driveSpirale();
  } else if (drivingPattern == 5) {
    driveTriangle();
  }
}



// setting motor speed for either of A or B, to speed in direction (@forward)
void setMotorSpeed(bool motorA, uint8_t speed = 100, bool forward = true) {
  analogWrite(motorA ? motorPinA1 : motorPinB1, speed * forward);
  analogWrite(motorA ? motorPinA2 : motorPinB2, speed * (!forward));
}



// driving @forward for @time with @speed
void driveForward(int time, uint8_t speed = 255, bool forward = true) {
  setMotorSpeed(true, speed, forward);
  setMotorSpeed(false, speed, forward);
  delay(time);
  stopMotors();
}



// 'instantly' stopping both motors
void stopMotors() {
  setMotorSpeed(true, 0);
  setMotorSpeed(false, 0);
}



// driving the curve as specified in Ex. 4 with @degree in @forward direction for @time.
void driveCurve(int degree, int time, uint8_t speed = 255, bool forward = true) {
  if (abs(degree) > 90) {
    return;
  }
  // setting specific motor speed based on direction, speed can be negative (relative)
  int speedA = degree >= 0 ? speed : map(degree, -90, 0, -speed,  speed);
  int speedB = degree >  0 ?         map(degree, 0, 90,   speed, -speed) : speed;
  setMotorSpeed(true,  speedA > 0 ? speedA : -speedA, speedA > 0 ? true : false);
  setMotorSpeed(false, speedB > 0 ? speedB : -speedB, speedB > 0 ? true : false);
  delay(time);
  stopMotors();
}



// driving a Rectangle
void driveRectangle() {
  driveForward(300, 100);
  driveCurve(-40, 100, 100);
}



// driving a Circle
void driveCircle() {
  driveCurve(90, 100);
}



// driving a spirale TODO: actually do this.
void driveSpirale() {
  driveCurve(90, 100);
  driveForward(1000, 100);
  if (spirale >= 10) {
    driveCurve(90, 100);
  }
}



// driving the triangle TODO rework, improve
void driveTriangle() {
  driveCurve(60, 200, 150);
  driveForward(600, 150);
}



// trying to avoid obstacles closer to 25cm
void avoidObstacles() {
  int dist = measureDistance(ultrasonicPin);
  if ( dist < 30 && dist >= 2) {
    driveCurve(-80, 210, 150);
  } else {
    driveForward(200, 100);
  }
}


int measureDistance(int pin) {

  /*
   *  Returns distance in cm for a given pin,
   *  connected to an ultrasound sensor.
   *  Times out after 40 milliseconds.
   *  Expects the pin to be declared as output.
   */

  int distance;
  digitalWrite(pin, HIGH);
  delayMicroseconds(15);
  digitalWrite(pin, LOW);
  pinMode(pin, INPUT);
  distance = pulseIn(pin, HIGH, 40000);

  pinMode(pin, OUTPUT);
  digitalWrite(pin, LOW);

  return distance / 58;
}

