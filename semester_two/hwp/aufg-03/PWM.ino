// Copyright 2015: Jan Burchard
// HWP Code: Timers, PWM & Interrupts


void setup() {
  pinMode(13, OUTPUT);
}


// PWM with digital write & delay
void delayBased(uint8_t val, uint32_t len) {

  // goal: switch around 1000 times per second
  // val = 0  : always 0
  // val = 255: always 1

  uint32_t startTime = millis();

  while(millis() - startTime < len) {
    digitalWrite(13, HIGH);
    delayMicroseconds(4*val);
    digitalWrite(13, LOW);
    delayMicroseconds(4*255 - 4*val);
  }
}


// timer based
void timerBased(uint8_t val) {

  cli();

  // reset control registers
  TCCR2A = 0;
  TCCR2B = 0;

  // set mode (normal -> nothing to do)

  // set clock prescaler: 64
  TCCR2B |= (1 << CS22);

  // set output compare register A
  OCR2A = val;

  if (val != 255) {
    // enable the interrupt at OCR1A match
    TIMSK2 |= (1 << OCIE2A);
  }
  else {
    // disable the interrupt at OCR1A match
    TIMSK2 &= ~(1 << OCIE2A);
  }


  if (val != 0) {
   // enable the overflow interrupt
    TIMSK2 |= (1 << TOIE2);
  }
  else {
    // disable the overflow interrupt
    TIMSK2 &= ~(1 << TOIE2);
  }
  sei();
}


void loop() {

  //delayBased(2, 1000);
  timerBased(150);
}


// interrupt service routine for timer 2 compare match
ISR(TIMER2_COMPA_vect)
{
  // set to 0
  PORTB &= ~(1 << 5);
}


// interrupt service routine for timer 2 overflow
ISR(TIMER2_OVF_vect)
{
  // set to 1
  PORTB |= (1 << 5);
}

