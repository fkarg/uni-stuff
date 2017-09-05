




void setup() {
  Serial.begin(9600);
  Serial.println("Begin");
}



void loop() {
  uint16_t t0 = millis();
  for (uint32_t i = 0; i < 100000; i++) {
    setPin12(HIGH);
    setPin12(LOW);
  }
  uint16_t t1 = millis();
  for (uint32_t i = 0; i < 100000; i++) {
    setPin12Asm(HIGH);
    setPin12Asm(LOW);
  }
  uint16_t t2 = millis();

  Serial.print(t1 - t0);
  Serial.print('\t');
  Serial.println(t2 - t1);
}



void setPin12(boolean high) {
  if (high) {
    PORTB |= (1 << 4);
  }
  else {
    PORTB &= ~(1 << 4);
  }
}



void setPin12Asm(boolean high) {
  if (high) {
    asm volatile (
    "sbi %0 %1\n\t"
    :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB5)
    );
  } else {
    asm volatile (
    "cbi %0 %1\n\t"
    :: "I" (_SFR_IO_ADDR(PORTB)), "I" (PORTB5)
    );
  }
}


