// Copyright 2015: Jan Burchard
// HWP Code: Low level ADC

void setup() {
  // reset registers
  ADMUX = 0;
  ADCSRA = 0;
  
  // select the reference
  // AVcc
  ADMUX |= (1 << REFS0);
  
  // input: ADC0
  // -> mux = 0
  
  // enable the ADC
  ADCSRA |= (1 << ADEN);  
}


// read value from analog pin A0
uint16_t myAnalog0Read() {
  
  // start ADC conversion
  ADCSRA |= (1 << ADSC);
  
  // wait for result
  while((ADCSRA & (1 << ADIF)) == 0) {
  }
  
  // read the result
  uint16_t res = ADCL;
  res |= (ADCH << 8);
  
  // remove conversion finished flag
  ADCSRA &= ~(1 << ADIF);
  
  return res;
}


void loop() {

}
