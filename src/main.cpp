/*
   I2C addresses:

   LCD:0x3F (63)
   DAC:0x60 (96)
   INA: 0x40 (64)

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

   Itrip= Vref /(4rs) = vref / 2


 */
 #include <Arduino.h>
 #include <Wire.h>
 #include <LiquidCrystal_I2C.h>
 #include <Adafruit_MCP4725.h>
 #include <Adafruit_INA219.h>
 #include <Adafruit_NeoPixel-ANDnXOR.h>
 #include <PID_v1.h>
 #include <Bounce2.h>
#include <EEPROM.h>



//Pins: Must be in the same .h file as they are used.

int motor1_input1 = PB8;
int motor1_input2 = PB9;

int step_M1 = PB11;
int cmd_M1 = PB10;

const int limitUpper_M1 = PB0;
const int limitLower_M1= PB1;
const int out_M1 = PB15;
const int LED = PA13;

int motor1_Enc_A = PA6;
int motor1_Enc_B = PA7;
int rot_EncA = PA0;
int rot_EncB = PA1;
int rot_EncBTN = PA2;

//Define Variables we'll be connecting to
double Setpoint, Input, Output;

//Specify the links and initial tuning parameters
double Kp=99, Ki=99, Kd=99;
PID myPID(&Input, &Output, &Setpoint, Kp, Ki, Kd,P_ON_M, DIRECT);
//DIRECT
Bounce debouncer = Bounce();
Adafruit_MCP4725 dac;
Adafruit_INA219 ina219;
LiquidCrystal_I2C lcd(0x3f,20,4);


// Parameter 1 = number of pixels in strip
// Parameter 2 = pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
Adafruit_NeoPixel pixels = Adafruit_NeoPixel(1, LED, NEO_GRB + NEO_KHZ800);



//Eeprom addresses 10 byte per adress, just to be safe (in case of double):
const int Kp_promAddress = 0;
const int Ki_promAddress = 8;
const int Kd_promAddress = 17;
const int MotorCurrent_promAddress = 25;
const int MotorSpeed_promAddress =34;


//Golbals:

int LCDUpdateTimer =0;
int runonce =12;
int motorSpeed =99;
int motorCurrent=99;
int inaV[5];
int inaA[5];
int inaPointer=0;
int menuTimer =0;
int rot_EncBTN_Bounced = 0;
int location =0;

//Prototypes:

void Motor1_enc_ISR();
void GotCommand();
void Rot_enc_ISR();
void run(int steps);
void Display();
int gotCommand_M1(int pin);
int gotCommand_M2();
void count_pulses();
void i2cScanner();



//my owm files needs to be included last ????!?? <- after pin declaration
#include <enc.h>
#include <menu.h>
#include <gotCommand.h>
#include <runMotor.h>
#include <showSettings.h>
void setup(){

        pinMode(motor1_Enc_A, INPUT);
        pinMode(motor1_Enc_B, INPUT);
        pinMode(rot_EncA, INPUT);
        pinMode(rot_EncB, INPUT);
        pinMode(rot_EncBTN, INPUT);

        pinMode(motor1_input1, PWM);
        pinMode(motor1_input2, PWM);
        pwmWrite(motor1_input1, 0);
        pwmWrite(motor1_input2, 0);

        pinMode(cmd_M1, INPUT_PULLUP);
        pinMode(step_M1, INPUT_PULLUP);
        pinMode(limitUpper_M1, INPUT_PULLUP);
        pinMode(limitLower_M1, INPUT_PULLUP);

        pinMode(out_M1, OUTPUT);
        pinMode(LED, OUTPUT);

        lcd.init();            // initialize the lcd
        lcd.backlight();
        lcd.clear();

        // Initialize the INA219.
        // By default the initialization will use the largest range (32V, 2A).  However
        // you can call a setCalibration function to change this range (see comments).
        ina219.begin();
        // To use a slightly lower 32V, 1A range (higher precision on amps):
        ina219.setCalibration_32V_1A(); //32 Volt max 10 A
        // Or to use a lower 16V, 400mA range (higher precision on volts and amps):
        //ina219.setCalibration_16V_400mA();

        dac.begin(0x60);

        myPID.SetMode(AUTOMATIC);


        attachInterrupt(motor1_Enc_A, Motor1_enc_ISR, FALLING);
        attachInterrupt(rot_EncA, Rot_enc_ISR, FALLING);

        debouncer.attach(rot_EncBTN);
        debouncer.interval(5);




        LCDUpdateTimer =millis();
        digitalWrite(out_M1, LOW);

        delay(50); //låter DAC'en stabilisera

//Läser tuning variabler från Eeprom och skriver dom
        Kp = EEPROM.read(Kp_promAddress);
        Ki = EEPROM.read(Ki_promAddress);
        Kd = EEPROM.read(Kd_promAddress);
        myPID.SetTunings(Kp, Ki, Kd);
        motorCurrent = EEPROM.read(MotorCurrent_promAddress);
        motorSpeed = EEPROM.read(MotorSpeed_promAddress);
        dac.setVoltage(motorCurrent, false);
        myPID.SetOutputLimits(40000, motorSpeed);

        //showSetting();

}

void loop(){
        debouncer.update();
        rot_EncBTN_Bounced = debouncer.read();

        if (millis() - LCDUpdateTimer >=100) {
                Display();
                LCDUpdateTimer=millis();
        }


        if (digitalRead(cmd_M1) == HIGH) {
                pulses = gotCommand_M1(cmd_M1);

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

        if (rot_EncBTN_Bounced == HIGH) {
                lcd.setCursor(0, 0);
                lcd.print(millis() - menuTimer);
                if (millis() - menuTimer > 1000 ) {
                        MainMenu();
                        menuTimer = millis();

                }
        }

        else {
                menuTimer = millis();
        }
}







void Display(/* arguments */) {
        lcd.setCursor(0,0);
        lcd.print("BusV    Bus Current");
        lcd.setCursor(0, 1);
        lcd.print(ina219.getBusVoltage_V());
        lcd.setCursor(13, 1);
        lcd.print(ina219.getCurrent_mA()/10);


        lcd.setCursor(0,2);
        lcd.print(enc_Motor1);
}



void i2cScanner(){
        lcd.clear();
        lcd.print("I2c addresses");
        lcd.setCursor(0,1);
        byte error, address;
        int nDevices;


        nDevices = 0;
        for(address = 1; address < 127; address++ )
        {
                // The i2c_scanner uses the return value of
                // the Write.endTransmisstion to see if
                // a device did acknowledge to the address.
                Wire.beginTransmission(address);
                error = Wire.endTransmission();

                if (error == 0)
                {
                        lcd.print("0x");
                        if (address<16)
                                lcd.print("0");
                        lcd.print(address,HEX);
                        lcd.print(" ");

                        nDevices++;
                }
                else if (error==4)
                {
                        lcd.print("Unknown 0x");
                        if (address<16)
                                lcd.print("0");
                        lcd.println(address,HEX);
                }
        }
        if (nDevices == 0)
                lcd.println("No I2C devices found\n");
        else
                lcd.setCursor(0,3);

        lcd.print("Done Sanning");
        delay(1000);
        while (1) {
                if (digitalRead(rot_EncBTN) == HIGH) {
                        break;
                        /* code */
                }
        }

}
