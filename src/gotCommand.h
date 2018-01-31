

volatile int pulses =0;
int step_M1 = PA1;
int step_M2 = PA2;

void count_pulses();


int gotCommand_M1(int pin) {
        lcd.setCursor(0,0);
        lcd.print("Got command");
        attachInterrupt(step_M1, count_pulses, RISING);

        while ( digitalRead(pin) == HIGH) {

                /* code */
        }
        detachInterrupt(step_M1);
        lcd.setCursor(0,0);
        lcd.print("Returning");
        pulses = 5000;
        return pulses;
}

int gotCommand_M2(int pin) {
        attachInterrupt(step_M2, count_pulses, RISING);

        while ( digitalRead(pin) == HIGH) {

                /* code */
        }

        detachInterrupt(step_M2);
        return pulses;
}

void count_pulses(){
        pulses++;

}


/*
   void GotCommand() {
        while(digitalRead(cmd_M1)  == HIGH) {
                if (runonce == 0) {
                        Serial.println("got cmd, attaching interupt");
                        attachInterrupt(0, count_pulses, RISING);
                        runonce =1;
                        pulses = 0;
                        pixels.setPixelColor(0, pixels.Color(0,0,150));
                        pixels.show(); // This sends the updated pixel color to the hardware.
                }
        }
        lcd.print(pulses);
        Serial.println(pulses);

        gotCMD = true;
        detachInterrupt(0);
        Serial.println("interupt detached");
        for (int i = 0; i < pulses; i++) {

                pixels.setPixelColor(0, pixels.Color(0,0,150));
                pixels.show();   // This sends the updated pixel color to the hardware.
                delay(50);
                pixels.setPixelColor(0, pixels.Color(0,0,0));
                pixels.show();   // This sends the updated pixel color to the hardware.
                delay(50);
        }
        run(pulses);
   }

   }
 */
