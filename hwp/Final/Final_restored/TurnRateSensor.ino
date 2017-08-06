// TurnRate Sensor: read data from analog gyroscope, output heading on lcd

/* Connections:
 R/S : Pin 11
 R/W : not connected
 E   : Pin 12
 DB4 : Pin 13
 DB5 : Pin A0
 DB6 : Pin A1
 DB7 : Pin A2

 Turn-Rate Sensor: A3
*/
// include LCD functions:
// #include <LiquidCrystal.h>

// define the LCD screen
// LiquidCrystal lcd(11, 12, 13, A0, A1, A2);

// variables needed for the gyro
int16_t currentTurnRate;
int16_t middleValue;
int16_t analogValue;
int64_t heading = 0;
uint16_t headingDeg;
// constant to convert heading value to degrees
uint16_t m = 3400;
uint64_t startTime;
uint64_t newTime;

// initialization
void setup()
{
//    // LCD has 4 lines with 20 chars
//    lcd.begin(20, 4);
//    lcd.print("Analog 3:");
//    lcd.setCursor(0, 1);
//    lcd.print("turn rate:");
//    lcd.setCursor(0, 2);
//    lcd.print("heading:");
//    lcd.setCursor(0, 3);
//    lcd.print("heading:");
//    lcd.setCursor(13, 3); lcd.print("deg");

   // initialize serial interface
   Serial.begin(38400);

   uint16_t temp = 0;
   delay(500);
   for (int i = 0; i < 50; i++) {
    temp += analogRead(A3);
    delay(10);
   }
   middleValue = (uint16_t) temp / 50;
   startTime = millis();
   delay(50);
}

void loop()
{
  analogValue = analogRead(A3);
  if (analogValue < middleValue + 20 && analogValue > middleValue - 20) {
    analogValue = middleValue;
  }
  newTime = millis();
  currentTurnRate = analogValue - middleValue;
  heading += currentTurnRate * (newTime - startTime);
  headingDeg = (uint16_t)(heading / m % 360) + (heading >= 0 ? 0 : 360);
  startTime = newTime;

  Serial.write((uint8_t)(headingDeg / 2));

//   lcd.setCursor(10, 0); lcd.print("   "); lcd.setCursor(10, 0);
//   lcd.print(analogValue);
//   lcd.setCursor(12, 1); lcd.print("    "); lcd.setCursor(12, 1);
//   lcd.print(currentTurnRate);
//   lcd.setCursor(10, 2); lcd.print("        "); lcd.setCursor(10, 2);
//   lcd.print((int32_t)heading);
//   lcd.setCursor(10, 3); lcd.print("   "); lcd.setCursor(10, 3);
//   lcd.print(headingDeg);
}

