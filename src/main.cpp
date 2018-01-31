/*
   I2C addresses:

   LCD:0x3F (63)
   DAC:0x62 (98)

   todo's:

   meny system:{
   step back efter körning
   Current limit
   Hastighet (PWM)
   simulate command
   }

   LED?
   Motor divare fram och bak (Servo?) - Funkar. behöver bättre funktion
   command input (anväanda samma som den gamla?)


 */
#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <Adafruit_MCP4725.h>
#include <Adafruit_INA219.h>
#include <enc.h>
#include <menu.h>








//Pins: Must be in the same .h file as they are used.

int motor2_input1 = PA8;
int motor2_input2 = PA10;

/*
   int step_M1 = PA1;
   int step_M2 = PA2;
   int cmd_M1 = PA3;
   int cmd_M2 = PA4;
 */


//Golbals:

int LCDUpdateTimer =0;
int runonce =12;
int pulses =12;
int motor2speed =0;


//Prototypes:

void Motor1_enc_ISR();
void Motor2_enc_ISR();
void GotCommand();
void Rot_enc_ISR();
void run();
void Display();

Adafruit_MCP4725 dac;
Adafruit_INA219 ina219;

void setup(){
        pinMode(motor1_Enc_A, INPUT);
        pinMode(motor1_Enc_B, INPUT);
        pinMode(motor2_Enc_A, INPUT);
        pinMode(motor2_Enc_B, INPUT);
        pinMode(rot_EncA, INPUT);
        pinMode(rot_EncB, INPUT);
        pinMode(rot_EncBTN, INPUT);
        pinMode(motor2_input1, PWM);
        pinMode(motor2_input2, PWM);

        lcd.init();            // initialize the lcd
        lcd.backlight();
        // Initialize the INA219.
        // By default the initialization will use the largest range (32V, 2A).  However
        // you can call a setCalibration function to change this range (see comments).
        ina219.begin();
        // To use a slightly lower 32V, 1A range (higher precision on amps):
        //ina219.setCalibration_32V_1A();
        // Or to use a lower 16V, 400mA range (higher precision on volts and amps):
        ina219.setCalibration_16V_400mA();
        dac.begin(0x62);
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("BusV    Bus Current");

        attachInterrupt(motor1_Enc_A, Motor1_enc_ISR, FALLING);
        attachInterrupt(motor2_Enc_A, Motor2_enc_ISR, FALLING);
        attachInterrupt(rot_EncA, Rot_enc_ISR, FALLING);

        LCDUpdateTimer =millis();
        dac.setVoltage(4095/4, 0);
        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, 0);
        //analogWrite(motor2_input1, 150);

}
void loop(){

        if (millis() - LCDUpdateTimer >=100) {
                Display();
                LCDUpdateTimer=millis();
        }


        //motor2speed = rot_enc*100;
        if (motor2speed > 0) {
                run();
        }


}


void run(){
        enc_Motor2 =0;
        motor2speed=0;

        while (enc_Motor2 > -10000) {

                if (millis() - LCDUpdateTimer >=100) {
                        Display();
                        LCDUpdateTimer=millis();
                }
                pwmWrite(motor2_input1, motor2speed);
                pwmWrite(motor2_input2, 0);
        }
        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, 0);
        Display();
        delay(2000);
        lcd.clear();

        enc_Motor2=0;
        Display();

        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, motor2speed);
        while (enc_Motor2 < 10000) {

                if (millis() - LCDUpdateTimer >=100) {
                        Display();
                        LCDUpdateTimer=millis();
                }
        }
        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, 0);
        delay(2000);
        rot_enc=0;
        motor2speed=0;

}


void Display(/* arguments */) {
        lcd.setCursor(0, 1);
        lcd.print(ina219.getBusVoltage_V());
        lcd.setCursor(13, 1);
        lcd.print(ina219.getCurrent_mA());


        lcd.setCursor(0,2);
        lcd.print(enc_Motor1);
        lcd.setCursor(6,2);
        lcd.print(enc_Motor2);
        lcd.setCursor(10,3);
        lcd.print(motor2speed);
        motor2speed = rot_enc*1000;

/*
        if (enc_Motor2 != enc_Motor2_OLD && enc_Motor2 >=0) {
                dac.setVoltage(enc_Motor2,0);
        }
 */
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
