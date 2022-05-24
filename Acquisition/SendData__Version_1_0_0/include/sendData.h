#include "Arduino.h"
#include "Encoder.h"

unsigned long currentMicros;
int interval = 500;

//Values to change depending on tests to be made
const int numberOfElectrodes = 2;
const int numberOfEncoder = 4;

/* For reading myoware signals */
//Assign pins
const int analogPin1 = 15;
const int analogPin2 = 16;
const int analogPin3 = 21;
const int analogPin4 = 22;

/* For reading encoder signals */
//Name pins
const int encoder1_Pin1 = 2;
const int encoder1_Pin2 = 3;
const int encoder2_Pin1 = 10;
const int encoder2_Pin2 = 11;
const int encoder3_Pin1 = 17;
const int encoder3_Pin2 = 18;
const int encoder4_Pin1 = 19;
const int encoder4_Pin2 = 20;

//Assign pins
Encoder encod1(encoder1_Pin1, encoder1_Pin2);
Encoder encod2(encoder2_Pin1, encoder2_Pin2);
Encoder encod3(encoder3_Pin1, encoder3_Pin2);
Encoder encod4(encoder4_Pin1, encoder4_Pin2);

int electrodePin[4] = {analogPin1, analogPin2, analogPin3, analogPin4};
Encoder encoder[4] = {encod1, encod2, encod3, encod4};

//Variables for sending packages
byte counterElectrode = 0;
byte counterEncoder = 0;

uint16_t valueElectrode[numberOfElectrodes];
uint32_t valueEncoder[numberOfEncoder]; //Encoder returns long which is 32 bits on TeensyLC (not 64)
uint8_t valuesToSend[numberOfElectrodes*2 + numberOfEncoder*4];