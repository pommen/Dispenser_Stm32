volatile int pulses =0;




int gotCommand_M1(int pin) {
        lcd.setCursor(0,0);
        lcd.print("Got command M1");
        pulses = 0;

        attachInterrupt(step_M1, count_pulses, RISING);

        while ( digitalRead(pin) == LOW) {

                /* code */
        }
        if (pulses > 0) {
                lcd.print(" step1");
        }
        detachInterrupt(step_M1);

        pulses = 500;
        //  pulses = pulses *100;
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
