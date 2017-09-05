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

void setup()
{
  // LCD has 4 lines with 20 chars
  lcd.begin(20, 4);
  lcd.print("system ready");
  delay(500);
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

  // wait for 100 ms (reduces display flickering)
  delay(100);
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
