#define TIMER1FREQ 1000000

uint16_t count = 0;


void setup() {

  Serial.begin(9600);

  cli(); // disable interrupts

  // timer1

  TCCR1A = 0; // set TCCR1A register to 0
  TCCR1B = 0; // set TCCR1B register to 0
  TCNT1  = 0; // set counter value to 0

  // for prescaler:
  // TCCR1B |= (1 << CS10);
  TCCR1B |= (1 << CS11);
  // TCCR1B |= (1 << CS12);

  TCCR1B |= (1 << WGM12); // turn on CTC mode
  TIMSK1 |= (1 << OCIE1A); // enable timer compare interrupt

  OCR1A = 1000; // set compare match register

  sei(); // allow interrupts


}


void loop() {

  Serial.println(count);
  delay(1000);

}



void set_freq(int freq) {
  cli(); // disable interrupts while changing config

  OCR1A = TIMER1FREQ / freq;

  sei(); // allow interrupts again
}

/*
8Mio/(2 * N * (1 + OCR2A) -- result: N = 256 fits all
freq = 15625 / (1 + OCR2A) <=> OCR2A = 15625 / freq
(die eins kann aufgrund der ungenauigkeit von
integerdivision vernachlässigt werden)

*/



ISR(TIMER1_COMPA_vect) {
  count += 1;
}





