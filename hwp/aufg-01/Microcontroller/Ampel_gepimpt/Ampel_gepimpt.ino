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
LiquidCrystal lcd(3, 4, 6, 7, 8, 9);

// define light-leds
int red    = 10;
int yellow = 11;
int green  = 12;

// define traffic-ligth relatet variables
int time = 0;
int diff = 0;
int oldtime = 0;
bool s1 = false;
bool pressed = false;
String led = "red";

// global variable, stores the result from analog pin
int analogValue;

void setup()
{
  // LCD has 4 lines with 20 chars
  pinMode(red   , OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(green , OUTPUT);

  lcd.begin(20, 4);
  lcd.print("system ready");
  delay(1000);
}


void loop()
{
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

  s1 = but <= 5;
  // selecting the correct button.
  if (s1) {
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

  lcd.setCursor(0, 2);
  lcd.print("light: " + led);

  dotrafficlight();

  // wait for 100 ms (reduces display flickering)
  delay(100);
}


void dotrafficlight() {
  if (time < 5000) {
    digitalWrite(yellow, LOW);
    digitalWrite(red, HIGH);
    led = "red";
    pressed = false;
  }
  if (time > 5000 && time < 6000) {
    digitalWrite(yellow, HIGH);
    led = "red + yellow";
  }
  if (time > 6000 && time < 9000) {
    digitalWrite(red, LOW);
    digitalWrite(yellow, LOW);
    digitalWrite(green, HIGH);
    led = "green";
  }
  if (time > 9000) {
    digitalWrite(green, LOW);
    digitalWrite(yellow, HIGH);
    led = "yellow";
  }

  // idea: if you press the s1 and it was not pressed before,
  // set the light in the next state (+yellow), run through all
  // once, set pressed to false again. if pressed is true, let the
  // time go on, otherwise just add nothing (standstill, stay red).
  if (s1 && !pressed) {
    pressed = true;
    time = 5001;
    diff = 0;
  } else if (pressed || s1) {
    // if the button was/is pressed, time goes on.
    diff = millis() - oldtime;
  } else {
    // time is at a standstill. Stay red.
    diff = 0;
  }
  // time gets updatet.
  time += diff ;
  time %= 10000;
  oldtime = millis();
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
