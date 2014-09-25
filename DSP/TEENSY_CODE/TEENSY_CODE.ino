//#include <ADC.h>
//
const int ledPin = 13;
const int readPin = A3; // ADC0
const int readPin2 = A3; // ADC1

//ADC *adc = new ADC(); // adc object
//
void setup() {

  pinMode(ledPin, OUTPUT);
  pinMode(readPin, INPUT); //pin 23 single ended
  pinMode(readPin2, INPUT); //pin 23 single ended

  Serial.begin(38400);
}
//
//  adc->setAveraging(32); // set number of averages
//  adc->setResolution(16); // set bits of resolution
//
//  //adc->setAveraging(32, ADC_1); // set number of averages
//  //adc->setResolution(12, ADC_1); // set bits of resolution
//  delay(500);
//  Serial.println("end setup");
//  adc->startContinuous(readPin, ADC_0);
//  delay(500);
//}
//
int analog = 0;
//
void loop() 
{
//  analog = adc->analogReadContinuous(ADC_0);
  analog = analogRead(A3);
//  analogWrite(analog, A0);
  digitalWrite(ledPin, HIGH);
  Serial.println(analog);
}
//
//void adc0_isr(void) {
//    // Low-level code
//    ADC0_RA;
//    GPIOC_PTOR = 1<<5;
//
//    // High-level code
//    //adc->analogReadContinuous(ADC_0); // read to clear the COCO flag
//    //digitalWrite(ledPin, !digitalRead(ledPin)); // toggle led
//
//}
//#if defined(__MK20DX256__)
//void adc1_isr(void) {
//    // Low-level code
//    ADC1_RA;
//    GPIOC_PTOR = 1<<5;
//
//    // High-level code
//    //adc->analogReadContinuous(ADC_1); // read to clear the COCO flag
//    //digitalWrite(ledPin, !digitalRead(ledPin)); // toggle led
//
//}
//#endif

// RESULTS OF THE TEST
// Measure continuously the voltage on a voltage divider.
// Measurement pin A9 (23). Clock speed 96 Mhz. Default options for analog_init. Only toggling led 
// and analogReadContinuous code on loop(){}, no Serial communications nor delay.

// ADC resolution     Measurement frequency                     Num. averages
//     16  bits           193.086 kHz                               1
//     12  bits           306.260 kHz                               1
//     10  bits           418.020 kHz                               1
//      8  bits           937.490 kHz                               1
//
//  Same but using interrupts, no code at all in loop(){}
// ADC resolution     Measurement frequency                     Num. averages
//     16  bits           387.088 kHz                               1
//     12  bits           461.528 kHz                               1
//     10  bits           545.442 kHz                               1
//      8  bits          1410.264 kHz                               1


//#define RES  16
//// change HARDWARE AVG to 1, 2, 4, 8, 16, 32
//#define AVG  2
//#define CNT  160000 / AVG
//
//
//void setup() {
//  Serial.begin(115200);
//  analogReadResolution(RES);
//  analogReadAveraging(AVG);
//  analogReference(0);
//}
//
//
//void loop() {
//  int t = micros();
//  int a0;
//
//  for(int i = 0; i < CNT ; i++){
//    a0 = analogRead(A0);             // read data
//  }
//
//  t = micros() - t;
//  Serial.print("ADC sampling rate (AVG "); Serial.print(AVG); Serial.print(") = ");
//  Serial.print(160000000 / t); Serial.println(" kSPS");
//}


