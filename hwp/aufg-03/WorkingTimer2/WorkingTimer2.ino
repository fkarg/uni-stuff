
// timer2 will interrupt at 8kHz

void setup() {
  cli(); // disable interrupts

  // timer2
  
  TCCR2A = 0; // set TCCR2A register to 0
  TCCR2B = 0; // set TCCR2B register to 0
  TCNT2  = 0; // set counter value to 0
  
  OCR2A = 249; // set compare match register
  
  TCCR2B |= (1 << CS21); // Set CS21 bits for 1:8 prescaler

  TCCR2A |= (1 << WGM21); // turn on CTC mode
  TIMSK2 |= (1 << OCIE2A); // enable timer compare interrupt
  
  
  sei(); // allow interrupts

}

  
ISR(TIMER2_COMPA_vect) {
  digitalWrite(13, !digitalRead(13));
  // timer2 interrupt to-do code here
}


void loop() {
  // other code
}
