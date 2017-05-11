// display test: write some data to the lcd

/* Connections:
 R/S : Pin 3
 R/W : not connected
 E   : Pin 4
 DB4 : Pin 6
 DB5 : Pin 7
 DB6 : Pin 8
 DB7 : Pin 9
*/

// include LCD functions:
#include <LiquidCrystal.h>

// define the LCD screen
// LiquidCrystal lcd(3, 4, 6, 7, 8, 9);


// defining values for motor-stuff
int motorPinA1 = 10;
int motorPinA2 = 11;
int motorPinB1 = 6;
int motorPinB2 = 9;

int drivingPattern = 0;

// define ultrasound pins
int us1 = 13;

// setting motor speed for either of A or B, to speed in direction (?forward)
void setMotorSpeed(bool motorA, uint8_t speed = 100, bool forward = true) {
  analogWrite(motorA ? motorPinA1 : motorPinB1, speed * forward);
  analogWrite(motorA ? motorPinA2 : motorPinB2, speed * (!forward));
}


// driving forward for @time with @speed
void driveForward(int time, int speed, bool forward = true) {
  setMotorSpeed(true, speed, forward);
  setMotorSpeed(false, speed, forward);
  delay(time);
  stopMotors();
}

// 'instantly' stopping both motors.
void stopMotors() {
  setMotorSpeed(true, 0);
  setMotorSpeed(false, 0);
}

// driving the curve as specified in Ex. 4 with @degree in @forward direction
void driveCurve(int degree, bool forward = true) {
  if (abs(degree) > 90) {
    return;
  }
  setMotorSpeed(true, degree >= 0 ? 255 : map(degree, -90, 0, -255, 255));
  setMotorSpeed(false, degree > 0 ?       map(degree, 0, 90, 255, -255) : 255);

}



void setup()
{
  // setting motor-pins to output
  pinMode(motorPinA1, OUTPUT);
  pinMode(motorPinA2, OUTPUT);
  pinMode(motorPinB1, OUTPUT);
  pinMode(motorPinB2, OUTPUT);
  pinMode(us1, OUTPUT);
  digitalWrite(us1, LOW);
  delay(500);

}


void loop()
{
/*
  // reinitializes the display, in order to remove weird behaviour.
  // Got even weirder. But seems to be clearer and works.
  lcd.begin(20, 4);
  lcd.print("Analog0: ");
  lcd.print(analogRead(0));

  // writing in the second line.
  lcd.setCursor(0, 1);
  lcd.print("button: ");

  // reading the value
  int but = analogRead(0);

  // selecting the correct button.
  if (but <= 5) {
    lcd.print("1");
  } else if (but >= 238 && but <= 250) {
    lcd.print("2");
  } else if (but >= 468 && but <= 480) {
    lcd.print("3");
  } else if (but >= 670 && but <= 683) {
    lcd.print("4");
  } else if (but >= 820 && but <= 840) {
    lcd.print("5");
  } else if (but >= 1020 && but <= 1024) {
    lcd.print("-");
  } else {
    lcd.print("u! ");
    lcd.print(but);
  }
*/
  // setMotorSpeed(false);
  // delay(500);
  // setMotorSpeed(false, 0);

  driveForward(500, 100);
  delay(100);
  driveForward(500, 100, false);
  delay(100);
  driveCurve(45);
  delay(100);
  stopMotors();

  // wait for 100 ms (reduces display flickering)
  delay(500);
}





/* Usefull LCD functions:
set the current write position of the lcd to specific line and row:
  lcd.setCursor(row, line);

write onto lcd, starting at current position:
  lcd.print("abc");

clear the lcd (this writes " " into all positions and is therefore slow):
If only specific areas should be cleared use a mix of setCursor and print(" ") instead
  lcd.clear();
*/


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

