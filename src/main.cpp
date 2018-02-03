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



   MAX 1.3V dac.
   3.3/4096 = 0.000805664 vOLT/step
   1,3v = 1613 STEPS
   Divide by 3 i hardware?


 */
    #include <Arduino.h>
 #include <Wire.h>
 #include <LiquidCrystal_I2C.h>
 #include <Adafruit_MCP4725.h>
 #include <Adafruit_INA219.h>


Adafruit_MCP4725 dac;
Adafruit_INA219 ina219;
LiquidCrystal_I2C lcd(0x3f,20,4);

//Pins: Must be in the same .h file as they are used.

int motor2_input1 = PA8;
int motor2_input2 = PA10;
int motor1_input1 = PB8;
int motor1_input2 = PB9;

int step_M1 = PB10;
int cmd_M1 = PB11;
int step_M2 = PA11;
int cmd_M2 = PA12;

const int limitUpper_M1 = PB0;
const int limitLower_M1= PB1;
const int limitUpper_M2 = PB12;
const int limitLower_M2 = PB13;

const int out_M1 = PB15;
const int out_M2 = PB14;

int motor2_Enc_A = PA3;
int motor2_Enc_B = PA4;
int motor1_Enc_A = PA6;
int motor1_Enc_B = PA7;
int rot_EncA = PA0;
int rot_EncB = PA1;
int rot_EncBTN = PA2;




//Golbals:

int LCDUpdateTimer =0;
int runonce =12;
int motor2speed =0;
int inaV[5];
int inaA[5];
int inaPointer=0;






//Prototypes:

void Motor1_enc_ISR();
void Motor2_enc_ISR();
void GotCommand();
void Rot_enc_ISR();
void run(int steps);
void Display();
int gotCommand_M1(int pin);
int gotCommand_M2();
void count_pulses();



//my owm files needs to be included last ????!??
#include <enc.h>
#include <menu.h>
#include <gotCommand.h>


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
        pinMode(motor1_input1, PWM);
        pinMode(motor1_input2, PWM);


        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, 0);
        pwmWrite(motor1_input1, 0);
        pwmWrite(motor1_input2, 0);

        pinMode(cmd_M1, INPUT_PULLUP);
        pinMode(cmd_M2, INPUT_PULLUP);
        pinMode(step_M1, INPUT_PULLUP);
        pinMode(step_M2, INPUT_PULLUP);
        pinMode(limitUpper_M1, INPUT_PULLUP);
        pinMode(limitLower_M1, INPUT_PULLUP);
        pinMode(limitUpper_M2, INPUT_PULLUP);
        pinMode(limitLower_M2, INPUT_PULLUP);

        pinMode(out_M1, OUTPUT);
        pinMode(out_M2, OUTPUT);


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
        dac.setVoltage(1000, 0);

        digitalWrite(out_M1, LOW);
        digitalWrite(out_M2, LOW);

}

void loop(){

        if (millis() - LCDUpdateTimer >=100) {
                Display();
                LCDUpdateTimer=millis();
        }


        if (digitalRead(cmd_M1) == LOW) {
                pulses = gotCommand_M1(cmd_M1);

                run(pulses);
        }
        if (digitalRead(cmd_M2) == LOW) {
                pulses = gotCommand_M2(cmd_M2);

                run(pulses);
        }



        if (digitalRead(limitLower_M1) == LOW) {
                lcd.clear();
                lcd.setCursor(0, 0);
                lcd.print("limit Lower M1");
        }
        if (digitalRead(limitUpper_M1) == LOW) {
                lcd.clear();
                lcd.setCursor(0, 0);
                lcd.print("limit Upper M1");
        }
        if (digitalRead(limitLower_M2) == LOW) {
                lcd.clear();
                lcd.setCursor(0, 0);
                lcd.print("limit Lower M2");
        }
        if (digitalRead(limitUpper_M2) == LOW) {
                lcd.clear();
                lcd.setCursor(0, 0);
                lcd.print("limit Upper M2");
        }
        /*
           if (digitalRead(cmd_M2) == HIGH) {
             pulses = gotCommand_M2(cmd_M2);
             run(pulses);
           }
         */
        //motor2speed = rot_enc*100;
        if (motor2speed > 0) {
                run(pulses);
        }


}





void run(int steps){
        enc_Motor2 =0;
        motor2speed=20000;

        while (enc_Motor2 > -steps) {

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
        delay(1000);
        lcd.clear();

        enc_Motor2=0;
        Display();

        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, motor2speed);


        while (enc_Motor2 < steps) {

                if (millis() - LCDUpdateTimer >=100) {
                        Display();
                        LCDUpdateTimer=millis();
                }
        }
        pwmWrite(motor2_input1, 0);
        pwmWrite(motor2_input2, 0);
        Display();

        delay(1000);
        pwmWrite(motor1_input1, 0);
        pwmWrite(motor1_input2, motor2speed);

        while (enc_Motor1 < steps) {

                if (millis() - LCDUpdateTimer >=100) {
                        Display();
                        LCDUpdateTimer=millis();
                }
        }
        pwmWrite(motor1_input1, 0);
        pwmWrite(motor1_input2, 0);



        pulses =0;

        rot_enc=0;
        motor2speed=0;


        digitalWrite(out_M1, HIGH);
        digitalWrite(out_M2, HIGH);
        delay(3000);
        digitalWrite(out_M1, LOW);
        digitalWrite(out_M2, LOW);


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
        lcd.setCursor(0,3);
        lcd.print(rot_enc);

        //  motor2speed = rot_enc*1000;

/*
        if (enc_Motor2 != enc_Motor2_OLD && enc_Motor2 >=0) {
                dac.setVoltage(enc_Motor2,0);
        }
 */
}
