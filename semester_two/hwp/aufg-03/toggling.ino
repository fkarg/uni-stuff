// Copyright 2015: Jan Burchard
// HWP Code: Low Level Pin Toggling

void setup() {

  // pin as output
  pinMode(13, OUTPUT);
}

// toggle w/ digitalWrite()
void classic() {
  while(true) {
    digitalWrite(13, LOW);
    digitalWrite(13, HIGH);
  }

  // -> 21.2 µs
  // -> 47.2 kHz
  // (Running at 8 MHz): almost 170 cycles / 2 switches
}


// own method of setting the pin
void setPin13(boolean high) {
  // pin 13 = PB5
  // I/O Ports starts on page 75
  // 14.2.1: Write PORTB 5 hight for '1', low for '0'

  if (high) {
    PORTB |= (1 << 5);
  }
  else {
    PORTB &= ~(1 << 5);
  }
}

void own() {
  while(true) {
    setPin13(false);
    setPin13(true);
  }

  // 2.2µs
  // 454 kHz
  // 17.6 cycles / 2 switches
}


// just toggle the pin
void ownToggle() {
  while(true) {
    PINB |= B00100000;
  }

  // 1 µs
  // -> 1 MHz
  // 8 cycles / 2 switches
}

// toggle in assembler
void ownToggleAsm( )
{
  // instructions on page 615
 asm volatile (
 "start:"
 "sbi %0, %1\n\t" // 2 clocks
 "cbi %0, %1\n\t" // 2 clocks
 "rjmp start\n\t" // 2 clocks
 :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB5)
 );

 // 720 ns
 // 1.388 MHz
 // 5.76 cycles / 2 switches
}


void loop() {
  // classic();
  // own();
  // ownToggle();
  ownToggleAsm();
}
