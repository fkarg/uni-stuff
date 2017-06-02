#define TIMER1FREQ 1000000
#define TIMER2FREQ 15625

volatile uint32_t tCount = 0;
uint32_t duration[10] = {700, 1200, 2500, 500, 1000, 2000, 2300, 650, 1450, 700 };
volatile uint32_t sCount = 0;
volatile uint8_t index = 0;
volatile boolean pin11 = false;
volatile boolean pin12 = false;

uint32_t frequency[10] = {100, 200, 300, 400, 500, 600, 700, 800, 900, 1000};


void setup() {

  Serial.begin(9600);

  cli(); // disable interrupts

  // timer1

  TCCR1A = 0; // set TCCR1A register to 0
  TCCR1B = 0; // set TCCR1B register to 0
  TCNT1  = 0; // set counter value to 0

  // prescaler set to 8 for timer1
  // for prescaler:
  // TCCR1B |= (1 << CS10);
  TCCR1B |= (1 << CS11);
  // TCCR1B |= (1 << CS12);

  TCCR1B |= (1 << WGM12); // turn on CTC mode
  TIMSK1 |= (1 << OCIE1A); // enable timer compare interrupt

  OCR1A = 1000; // set compare match register




  // timer2

  TCCR2A = 0; // set TCCR2A register to 0
  TCCR2B = 0; // set TCCR2B register to 0
  TCNT2  = 0; // set counter value to 0

  OCR2A = 255; // set compare match register

  // prescaler set to 256 for timer2
  // for prescaler:
  // TCCR2B |= (1 << CS20);
  TCCR2B |= (1 << CS21);
  TCCR2B |= (1 << CS22);

  TCCR2A |= (1 << WGM21); // turn on CTC mode
  TIMSK2 |= (1 << OCIE2A); // enable timer compare interrupt

  sei(); // allow interrupts

  // for ex. 4/5
  set_freq2(100);


  sei(); // allow interrupts


}


void loop() {

  Serial.print(sCount);
  Serial.print('\t');
  Serial.print(pin11);
  Serial.print('\t');
  Serial.println(tCount);
  delay(1000);

}


// freq is from 100Hz to 2kHz roughly, definitely not exact
void set_freq2(int freq) {
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
  // only toggling pin12
  setPin12(!pin12);
  pin12 = !pin12;
}


ISR(TIMER1_COMPA_vect) {
  tCount += 1;

  if (tCount >= sCount) {
    // if the duration is over
    index++;
    sCount = tCount + duration[index % 10];
    setPin11(!pin11);
    pin11 = !pin11;

    // setting the new sound-frequency
    set_freq2(frequency[index % 10]);
  }
}


// setting pin11 directly over the register
void setPin11(boolean high) {
  if (high) {
    PORTB |= (1 << 3);
  }
  else {
    PORTB &= ~(1 << 3);
  }
}

// setting pin12 directly over the register
void setPin12(boolean high) {
  if (high) {
    PORTB |= (1 << 4);
  }
  else {
    PORTB &= ~(1 << 4);
  }
}




