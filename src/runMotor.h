void Servo();

void run(int steps){
        lcd.clear();
        enc_Motor1 =0;
        Setpoint = steps; //vart ska vi = vart vi är (enc_Motor1) + hur långt vi ska (steps)
/*

   PID
   Setpoint, Input, Output;

 */


        while (enc_Motor1 != Setpoint) {


                if (enc_Motor1 < Setpoint) {  // kör framåt om vi behöver det
                        pwmWrite(motor1_input1, 0);
                        while (enc_Motor1 < Setpoint) {
                                Input=enc_Motor1;
                                int gap = Setpoint - enc_Motor1; //distance away from setpoint
                                if (gap < 100)
                                { //we're close to setpoint, use conservative tuning parameters
                                        myPID.Compute();
                                }
                                else
                                {
                                        Output = motorSpeed;
                                }
                                if (millis() - LCDUpdateTimer >=100) {
                                        Display();
                                        LCDUpdateTimer=millis();
                                }
                                pwmWrite(motor1_input2, motorSpeed);
                                lcd.setCursor(6,2);
                                lcd.print(Output);
                        }
                }

                if (enc_Motor1 > Setpoint) {  // kör bakåt om vi behöver det
                        pwmWrite(motor1_input2, 0);

                        while (enc_Motor1 > Setpoint) {
                                Input=enc_Motor1;
                                int gap = Setpoint - enc_Motor1; //distance away from setpoint
                                if (gap < 100)
                                { //we're close to setpoint, use conservative tuning parameters
                                        myPID.Compute();
                                }
                                else
                                {
                                        Output = motorSpeed;
                                }
                                if (millis() - LCDUpdateTimer >=100) {
                                        Display();
                                        LCDUpdateTimer=millis();
                                }
                                pwmWrite(motor1_input1, motorSpeed);
                                lcd.setCursor(6,2);
                                lcd.print(Output);
                        }
                }

        }
        pwmWrite(motor1_input1, 0);
        pwmWrite(motor1_input2, 0);

        pulses =0;

        rot_enc=0;
        lcd.setCursor(0,2);
        lcd.print(enc_Motor1);
        lcd.setCursor(6,2);
        lcd.print(Output);
        lcd.setCursor(6,3);
        lcd.print(Setpoint);
        digitalWrite(out_M1, HIGH);
        delay(2000);
        digitalWrite(out_M1, LOW);


}


void Servo(){

        while (location - Setpoint != 0) {


        }

}
