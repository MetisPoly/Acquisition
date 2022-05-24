#include "sendData.h"

//TODO : Implement interrupts - Deuxieme essai de changements

/*
void interrupt_Encod1() {
  char i;
  i = digitalRead(encoder1_Pin2);
  if (i == 1)
    valueEncoder[0] += 1;
  else
    valueEncoder[0] -= 1;
}


void interrupt_Encod2() {
  char i;
  i = digitalRead(encoder2_Pin2);
  if (i == 1)
    valueEncoder[1] += 1;
  else
    valueEncoder[1] -= 1;
}
*/

void setup() {
  //Set baud rate
  Serial.begin(1000000);

  //Set ADC resolution
  analogReadResolution(12);

  //TODO : Implement encoder array 
  /*
  for(int i = 0; i < numberOfEncoder; i++) {
    encoder[i].write(1600);
  }
  */

  //Vraisemblablement il accepte pas les tableaux d'encodeurs donc le code suivant est un patch temporaire
  encod1.write(5000);
  encod2.write(5000);
  encod3.write(5000);
  encod4.write(5000);
}


void loop() {
  //Set reference timer
  currentMicros = micros();
  
  //Execution time of all of this is approximately 100micros
  //Reset all counters
  counterElectrode = 0;
  counterEncoder = 0;

  //Read all electrode signals
  for(int i = 0; i < numberOfElectrodes; i++) {
    valueElectrode[i] = analogRead(electrodePin[i]);
  }

  //TODO : Implement encoder array - Voici un commentaire constructif
  /*
  for(int i = 0; i < numberOfEncoder; i++) {
    //valueEncoder[i] = abs(encoder[i].read());
  }
  */

  //Vraisemblablement il accepte pas les tableaux d'encodeurs donc le code suivant est un patch temporaire
  valueEncoder[0] = abs(encod1.read());
  valueEncoder[1] = abs(encod2.read());
  valueEncoder[2] = abs(encod3.read());
  valueEncoder[3] = abs(encod4.read());


  //Decompose all values from electrodes
  for(int i = 0; i < sizeof(valuesToSend); i++) {
    //Decompose all values from electrodes
    if(counterElectrode < numberOfElectrodes) {
      //We decompose valueElectrode in 2 : 
        //First value is for the MSB byte
        //Second value is for the LSB byte
      valuesToSend[i] = valueElectrode[counterElectrode] & 255; 
      valuesToSend[i + 1] = (valueElectrode[counterElectrode] >> 8) & 255;
      
      i++;
      counterElectrode++;
    }

    //Decompose all values from encoders
    else if(counterEncoder < numberOfEncoder) {
      //Meaning we are intaking encoder values
        //First value is for the MSB byte etc.
        //Last value is for the LSB byte
      valuesToSend[i] = valueEncoder[counterEncoder] & 255;
      valuesToSend[i + 1] = (valueEncoder[counterEncoder] >> 8) & 255;
      valuesToSend[i + 2] = (valueEncoder[counterEncoder] >> 16) & 255;
      valuesToSend[i + 3] = (valueEncoder[counterEncoder] >> 24) & 255;
  
      i++; i++; i++;
      counterEncoder++;
      }
  }

    //Send package to python every interval
    Serial.write(valuesToSend, sizeof(valuesToSend));
    Serial.send_now();

  //Wait for a certain interval of time
  while(micros() < currentMicros + interval) {} //Wait [interval]us 
}

