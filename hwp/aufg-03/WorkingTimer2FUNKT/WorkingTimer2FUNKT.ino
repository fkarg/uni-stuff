#define TIMER2FREQ 15625

boolean pin12state = false;

void setup() {

  pinMode(12, OUTPUT);

  cli(); // disable interrupts

  // timer2

  TCCR2A = 0; // set TCCR2A register to 0
  TCCR2B = 0; // set TCCR2B register to 0
  TCNT2  = 0; // set counter value to 0

  OCR2A = 255; // set compare match register

  // for prescaler:
  TCCR2B |= (1 << CS20);
  TCCR2B |= (1 << CS21);
  // TCCR2B |= (1 << CS22);

  TCCR2A |= (1 << WGM21); // turn on CTC mode
  TIMSK2 |= (1 << OCIE2A); // enable timer compare interrupt

  sei(); // allow interrupts

  // for ex. 4/5
  set_freq(100);

}

// freq is from 100Hz to 2kHz roughly, definitely not exact
void set_freq(int freq) {
  cli(); // disable interrupts while changing config

  OCR2A = TIMER2FREQ / freq;

  sei(); // allow interrupts again
}

/*
8Mio/(2 * N * (1 + OCR2A) -- result: N = 256 fits all
freq = 15625 / (1 + OCR2A) <=> OCR2A = 15625 / freq
(das eine kann aufgrund der ungenauigkeit von integerdivision
vernachlässigt werden)

*/


ISR(TIMER2_COMPA_vect) {
  setPin12(!pin12state);
  pin12state = !pin12state;
}


void loop() {
  // other code
}

void setPin12(boolean high) {

  if (high) {
    PORTB |= (1 << 4);
  }
  else {
    PORTB &= ~(1 << 4);
  }
}

void setPin13(boolean high) {

  if (high) {
    PORTB |= (1 << 5);
  }
  else {
    PORTB &= ~(1 << 5);
  }
}
