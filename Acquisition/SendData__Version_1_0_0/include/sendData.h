#include "Arduino.h"
#include "Encoder.h"

unsigned long CURRENT_MICROS;
int WAIT_TIME_MICROS = 500;

//Values to change depending on tests to be made
const int NUMBER_OF_ELECTRODES = 2;
const int NUMBER_OF_ENCODERS = 4;

/* For reading myoware signals */
//Assign pins
const int ELECTRODE_1 = 15;
const int ELECTRODE_2 = 16;
const int ELECTRODE_3 = 21;
const int ELECTRODE_4 = 22;

/* For reading encoder signals */
//Name pins
const int ENCODER_1_PIN_1 = 2;
const int ENCODER_1_PIN_2 = 3;
const int ENCODER_2_PIN_1 = 10;
const int ENCODER_2_PIN_2 = 11;
const int ENCODER_3_PIN_1 = 17;
const int ENCODER_3_PIN_2 = 18;
const int ENCODER_4_PIN_1 = 19;
const int ENCODER_4_PIN_2 = 20;

//Assign pins
Encoder encod1(ENCODER_1_PIN_1, ENCODER_1_PIN_2);
Encoder encod2(ENCODER_2_PIN_1, ENCODER_2_PIN_2);
Encoder encod3(ENCODER_3_PIN_1, ENCODER_3_PIN_2);
Encoder encod4(ENCODER_4_PIN_1, ENCODER_4_PIN_2);

int electrodePin[4] = {ELECTRODE_1, ELECTRODE_2, ELECTRODE_3, ELECTRODE_4};
Encoder encoder[4] = {encod1, encod2, encod3, encod4};

//Variables for sending packages
byte counterElectrode = 0;
byte counterEncoder = 0;

uint16_t valueElectrode[NUMBER_OF_ELECTRODES];
uint32_t valueEncoder[NUMBER_OF_ENCODERS]; //Encoder returns long which is 32 bits on TeensyLC (not 64)
uint8_t valuesToSend[NUMBER_OF_ELECTRODES*2 + NUMBER_OF_ENCODERS*4];