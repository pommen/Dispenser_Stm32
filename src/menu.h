

void MotorMenu();
void InputMenu();
void PIDMenu();
void drawMainMenu();
void other();
void current_Speed();

void drawMainMenu(){
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    Main menu");
        lcd.setCursor(2, 1);
        lcd.print("Motor options");
        lcd.setCursor(2, 2);
        lcd.print("Input options");
        lcd.setCursor(2, 3);
        lcd.print("Other");
        lcd.setCursor(15, 3);
        lcd.print("Exit");

}
void MainMenu(){
        drawMainMenu();
        int justReturned = 0;
        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");
        //delay(1000);


        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 1) {  // ser till att markinger inte går ut i sidorna negativt
                                marker=1;
                                markertemp = rot_enc;
                        }

                        if (marker > 4) {  // ser till att markinger inte går ut i sidorna posetivt
                                marker=4;
                                markertemp = rot_enc +4;
                        }

                        oldRot_enc = rot_enc;
                        if (marker == 4) {
                                lcd.setCursor(0,3);
                                lcd.print(" ");
                                lcd.setCursor(14,3);
                                lcd.print("*");
                        }
                        else{
                                lcd.setCursor(14,3);
                                lcd.print(" ");
                                lcd.setCursor(0,lastmarker);
                                lcd.print(" ");
                                lcd.setCursor(0,marker);
                                lcd.print("*");
                        }
                }


                if (digitalRead(rot_EncBTN) == HIGH && justReturned == 0) {

                        switch (marker) {
                        case 0:
                                break;
                        case 1:
                                MotorMenu();
                                justReturned =1;
                                drawMainMenu();
                                //delay(200);
                                break;
                        case 2:
                                justReturned =1;
                                drawMainMenu();
                                //delay(200);
                                break;
                        case 3:
                                other();
                                justReturned =1;
                                drawMainMenu();
                                //delay(200);
                                break;
                        case 4:
                                leave = 1;
                                lcd.clear();
                                //return;
                                break;
                        }
                        /* code */
                }
                if (digitalRead(rot_EncBTN) == LOW) justReturned =0;
        }
        lcd.clear();
}
void drawMotorMenu(){
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    Motor Menu");
        lcd.setCursor(2, 1);
        lcd.print("PID");
        lcd.setCursor(2, 2);
        lcd.print("Current/Speed");
        lcd.setCursor(2, 3);
        lcd.print("Back");
}
void MotorMenu(){
        drawMotorMenu();
        int justReturned = 0;

        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");
        //delay(200);


        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 0) {    // ser till att markinger inte går ut i sidorna negativt
                                marker=0;
                                markertemp = rot_enc;
                        }

                        if (marker > 3) {    // ser till att markinger inte går ut i sidorna posetivt
                                marker=3;
                                markertemp = rot_enc +3;
                        }

                        oldRot_enc = rot_enc;
                        lcd.setCursor(0,lastmarker);
                        lcd.print(" ");
                        lcd.setCursor(0,marker);
                        lcd.print("*");
                }


                if (digitalRead(rot_EncBTN) == HIGH) {

                        switch (marker) {
                        case 0:
                                break;
                        case 1:
                                PIDMenu();
                                justReturned =1;
                                drawMotorMenu();
                                break;
                        case 2:
                                current_Speed();
                                justReturned =1;
                                drawMotorMenu();

                                break;
                        case 3:
                                lcd.clear();
                                return;
                                //Menu();
                                break;
                        }
                        /* code */
                }
        }
        lcd.clear();

}
void current_Speed(){

        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print(" Motor Menu");
        lcd.setCursor(2, 1);
        lcd.print("MAX speed: ");
        lcd.print(motorSpeed);
        lcd.setCursor(2, 2);
        lcd.print("MAX Curr: ");
        lcd.print( (motorCurrent* 0.805664) / 2,0);
        /*
           lcd.setCursor(2, 3);
           lcd.print("Kd: ");
           lcd.print(Kd);
         */
        lcd.setCursor(15, 3);
        lcd.print("Exit");
        int justReturned = 1;
        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");
        //delay(200);


        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 1) { // ser till att markinger inte går ut i sidorna negativt
                                marker=1;
                                markertemp = rot_enc;
                        }

                        if (marker > 4) { // ser till att markinger inte går ut i sidorna posetivt
                                marker=4;
                                markertemp = rot_enc +4;
                        }

                        oldRot_enc = rot_enc;
                        if (marker == 4) {
                                lcd.setCursor(0,3);
                                lcd.print(" ");
                                lcd.setCursor(14,3);
                                lcd.print("*");
                        }
                        else{
                                lcd.setCursor(14,3);
                                lcd.print(" ");
                                lcd.setCursor(0,lastmarker);
                                lcd.print(" ");
                                lcd.setCursor(0,marker);
                                lcd.print("*");
                        }
                }

                if (digitalRead(rot_EncBTN) == LOW) justReturned =0;
                if (digitalRead(rot_EncBTN) == HIGH && justReturned == 0) {
                        double value = 0; //ändra denna til det variablen du ska skifta.
                        double newValue = value;
                        double valueAddress = 0; //Eeprom adressen til samma value som ovan
                        int rot_temp = 0;
                        int btnrelesed =0;
                        rot_enc =0;

                        switch (marker) {
                        case 0:
                                break;
                        case 1: //Set Speed
                                //delay(500);
                                value = motorSpeed; //ändra denna til det variablen du ska skifta.
                                valueAddress = MotorSpeed_promAddress; //Eeprom adressen til samma value som ovan

                                lcd.setCursor(0,marker);
                                lcd.print("->");


                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH && btnrelesed ==1) {
                                                //EEprom write new value if its new. then break
                                                if (newValue != value) {
                                                        newValue = map(newValue, 0, 100, 35000, 64000);
                                                        EEPROM.write(valueAddress, newValue);
                                                        motorSpeed = EEPROM.read(MotorSpeed_promAddress);
                                                        justReturned =1;
                                                        myPID.SetOutputLimits(40000, motorSpeed);

                                                        break;
                                                }
                                        }

                                        if (rot_temp != rot_enc) {
                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);

                                                rot_temp=rot_enc;
                                                if (newValue > 100) {
                                                        newValue = 100;
                                                }
                                                if (newValue <0) {
                                                        newValue = 0;
                                                }
                                                lcd.setCursor(6,marker);
                                                lcd.print(newValue);
                                                lcd.print('  %');
                                        }
                                        if (digitalRead(rot_EncBTN) == LOW) btnrelesed = 1;
                                }
                                break;



                        case 2: //Set current
                                //delay(500);
                                value = motorCurrent; //ändra denna til det variablen du ska skifta.
                                valueAddress = MotorCurrent_promAddress; //Eeprom adressen til samma value som ovan

                                lcd.setCursor(0,marker);
                                lcd.print("->");


                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH) {
                                                //EEprom write new value if its new. then break
                                                if (newValue != value) {
                                                        newValue = newValue*100;
                                                        EEPROM.write(valueAddress, newValue);
                                                        motorCurrent = newValue;
                                                        dac.setVoltage(EEPROM.read(MotorCurrent_promAddress), false);

                                                        justReturned =1;

                                                        break;
                                                }
                                        }

                                        if (rot_temp != rot_enc) {
                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);

                                                if (newValue > 16) {
                                                        newValue = 16;
                                                }
                                                if (newValue <0) {
                                                        newValue = 0;
                                                }
                                                lcd.setCursor(6,marker);
                                                //lcd.print(newValue);
                                                lcd.print( (newValue* 0.0805664) / 2);
                                                lcd.print(" A  ");
                                                rot_temp=rot_enc;
                                        }
                                }
                                break;

                        case 3:
                                break;
                        case 4:  //EXIT
                                leave = 1;
                                lcd.clear();
                                //return;
                                break;
                        }
                        /* code */
                }
        }
        lcd.clear();

}
void PIDMenu(){

        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    PID Menu");
        lcd.setCursor(2, 1);
        lcd.print("Kp: ");
        lcd.print(Kp);
        lcd.setCursor(2, 2);
        lcd.print("Ki: ");
        lcd.print(Ki);
        lcd.setCursor(2, 3);
        lcd.print("Kd: ");
        lcd.print(Kd);
        lcd.setCursor(15, 3);
        lcd.print("Exit");
        int justReturned = 1;
        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");
        //delay(200);
<<<<<<< HEAD
=======

>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06

        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

<<<<<<< HEAD
        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 1) { // ser till att markinger inte går ut i sidorna negativt
                                marker=1;
                                markertemp = rot_enc;
                        }

=======
                        if (marker < 1) { // ser till att markinger inte går ut i sidorna negativt
                                marker=1;
                                markertemp = rot_enc;
                        }

>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                        if (marker > 4) { // ser till att markinger inte går ut i sidorna posetivt
                                marker=4;
                                markertemp = rot_enc +4;
                        }
                        oldRot_enc = rot_enc;
                        if (marker == 4) {
                                lcd.setCursor(0,3);
                                lcd.print(" ");
                                lcd.setCursor(14,3);
                                lcd.print("*");
                        }
                        else{
                                lcd.setCursor(14,3);
                                lcd.print(" ");
                                lcd.setCursor(0,lastmarker);
                                lcd.print(" ");
                                lcd.setCursor(0,marker);
                                lcd.print("*");
                        }
                }

                if (digitalRead(rot_EncBTN) == LOW) justReturned =0;
                if (digitalRead(rot_EncBTN) == HIGH && justReturned == 0) {

                        double value = 0;
                        double newValue = value;
                        double valueAddress = 0;
                        int rot_temp = rot_enc;
                        int btnLetGo =0;
                        switch (marker) {
                        case 0:
                                break;
                        case 1: //Set Kp
                                //delay(500);
                                value = Kp; //ändra denna til det variablen du ska skifta.
                                valueAddress = Kp_promAddress; //Eeprom adressen til samma value som ovan

                                lcd.setCursor(0,marker);
                                lcd.print("->");


                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH && btnLetGo ==1 ) {
                                                //EEprom write new value if its new. then break
                                                if (newValue != value) {
<<<<<<< HEAD
                                                        EEPROM.write(valueAddress, newValue *10);
                                                        Kp = EEPROM.read(Kp_promAddress) /10;
                                                        justReturned =1;
                                                        lcd.setCursor(6,marker);
                                                        lcd.print("     ");
                                                        lcd.setCursor(6,marker);
                                                        lcd.print(Kp);
=======
                                                        EEPROM.write(valueAddress, newValue);
                                                        Kp = newValue;
                                                        justReturned =1;
>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                                                        break;
                                                }
                                        }

                                        if (rot_temp != rot_enc) { //om rot enc har ändrats

                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);

                                                lcd.setCursor(6,marker);
                                                lcd.print(newValue);
                                                rot_temp=rot_enc;
                                        }
                                        if (digitalRead(rot_EncBTN) == LOW) btnLetGo=1;
                                }
                                break;

                        case 2: //Set Ki
                                //delay(500);
                                value = Ki; //ändra denna til det variablen du ska skifta.
                                valueAddress = Ki_promAddress; //Eeprom adressen til samma value som ovan

                                lcd.setCursor(0,marker);
                                lcd.print("->");


                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH && btnLetGo ==1 ) {
                                                //EEprom write new value if its new. then break
                                                if (newValue != value) {
<<<<<<< HEAD
                                                        EEPROM.write(valueAddress, newValue *10);
                                                        Ki = EEPROM.read(Ki_promAddress) /10;

                                                        justReturned =1;
                                                        lcd.setCursor(6,marker);
                                                        lcd.print("     ");
                                                        lcd.setCursor(6,marker);
                                                        lcd.print(Ki);
=======
                                                        EEPROM.write(valueAddress, newValue/10);
                                                        Ki = newValue/10;

                                                        justReturned =1;

>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                                                        break;
                                                }
                                        }

                                        if (rot_temp != rot_enc) {
                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);
                                                lcd.setCursor(6,marker);
<<<<<<< HEAD
                                                lcd.print(newValue);
=======
                                                lcd.print(newValue/10);
>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                                                rot_temp=rot_enc;
                                        }
                                        if (digitalRead(rot_EncBTN) == LOW) btnLetGo=1;

                                }
                                break;

                        case 3: //Set Kd
                                //delay(500);
                                value = Kd; //ändra denna til det variablen du ska skifta.
                                valueAddress = Kd_promAddress; //Eeprom adressen til samma value som ovan

                                lcd.setCursor(0,marker);
                                lcd.print("->");


                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH && btnLetGo ==1 ) {
                                                //EEprom write new value if its new. then break
                                                if (newValue != value) {
<<<<<<< HEAD
                                                        EEPROM.write(valueAddress, newValue * 10);
                                                        Kd = EEPROM.read(Kd_promAddress) / 10;

                                                        justReturned =1;
                                                        lcd.setCursor(6,marker);
                                                        lcd.print("     ");
                                                        lcd.setCursor(6,marker);
                                                        lcd.print(Kd);
=======
                                                        EEPROM.write(valueAddress, newValue/10);
                                                        Kd = newValue/10;

                                                        justReturned =1;

>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                                                        break;
                                                }
                                        }

                                        if (rot_temp != rot_enc) {
                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);
                                                lcd.setCursor(6,marker);
<<<<<<< HEAD
                                                lcd.print(newValue);
=======
                                                lcd.print(newValue/10);
>>>>>>> bd115d1200da04cd67c7518dda64e173ee50fe06
                                                rot_temp=rot_enc;
                                        }
                                        if (digitalRead(rot_EncBTN) == LOW) btnLetGo=1;

                                }
                                break;
                        case 4:  //EXIT
                                leave = 1;
                                lcd.clear();
                                //return;
                                break;
                        }
                        /* code */
                }
        }
        lcd.clear();

}
void InputMenu(){

        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    Motor Menu");
        lcd.setCursor(2, 1);
        lcd.print("PID");
        lcd.setCursor(2, 2);
        lcd.print("Current/Speed");
        lcd.setCursor(2, 3);
        lcd.print("Back");
        int justReturned = 0;
        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");


        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 0) {    // ser till att markinger inte går ut i sidorna negativt
                                marker=0;
                                markertemp = rot_enc;
                        }

                        if (marker > 3) {    // ser till att markinger inte går ut i sidorna posetivt
                                marker=3;
                                markertemp = rot_enc +3;
                        }

                        oldRot_enc = rot_enc;
                        lcd.setCursor(0,lastmarker);
                        lcd.print(" ");
                        lcd.setCursor(0,marker);
                        lcd.print("*");
                }


                if (digitalRead(rot_EncBTN) == HIGH && justReturned == 0) {

                        switch (marker) {
                        case 0:
                                break;
                        case 1:

                                break;
                        case 2:
                                break;
                        case 3:
                                lcd.clear();
                                return;
                                //Menu();
                                break;
                        }
                        /* code */
                }
                if (digitalRead(rot_EncBTN) == LOW) justReturned =0;

        }
        lcd.clear();

}
void drawOther() {
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    Other menu");
        lcd.setCursor(2, 1);
        lcd.print("I2c scanner");
        lcd.setCursor(2, 2);
        lcd.print("Run Motor");
        lcd.setCursor(2, 3);
        lcd.print(" ");
        lcd.setCursor(15, 3);
        lcd.print("Exit");
}
void other() {
        drawOther();
        int justReturned = 1;
        int markertemp = rot_enc;
        int marker = markertemp - rot_enc;
        int lastmarker =0;
        int oldRot_enc = 0;
        int leave = 0;
        lcd.setCursor(0,marker);
        lcd.print("*");
        //delay(1000);


        while (leave != 1) {
                if (oldRot_enc != rot_enc) {
                        lastmarker = marker;
                        marker = markertemp - rot_enc;

                        if (marker < 1) {    // ser till att markinger inte går ut i sidorna negativt
                                marker=1;
                                markertemp = rot_enc;
                        }

                        if (marker > 4) {    // ser till att markinger inte går ut i sidorna posetivt
                                marker=4;
                                markertemp = rot_enc +4;
                        }

                        oldRot_enc = rot_enc;
                        if (marker == 4) {
                                lcd.setCursor(0,3);
                                lcd.print(" ");
                                lcd.setCursor(14,3);
                                lcd.print("*");
                        }
                        else{
                                lcd.setCursor(14,3);
                                lcd.print(" ");
                                lcd.setCursor(0,lastmarker);
                                lcd.print(" ");
                                lcd.setCursor(0,marker);
                                lcd.print("*");
                        }
                }


                if (digitalRead(rot_EncBTN) == HIGH && justReturned == 0) {
                        double value = 0;
                        double newValue = value;
                        int rot_temp = rot_enc;
                        int btnrelesed = 1;

                        switch (marker) {
                        case 0:
                                break;
                        case 1:
                                i2cScanner();
                                justReturned =1;
                                drawOther();
                                //delay(200);
                                break;
                        case 2:
                                //runMotor



                                lcd.setCursor(0,marker);
                                lcd.print("->");

                                while (1) {

                                        if (digitalRead(rot_EncBTN) == HIGH && btnrelesed ==0) {
                                                break;
                                        }
                                        if (digitalRead(rot_EncBTN) == LOW) btnrelesed =0;

                                        if (rot_temp != rot_enc) {
                                                lcd.setCursor(6,marker);
                                                lcd.print("     ");
                                                newValue = newValue + ( rot_enc - rot_temp);
                                                lcd.setCursor(6,marker);
                                                lcd.print(newValue);
                                                rot_temp=rot_enc;
                                        }
                                }
                                run(newValue *100);
                                justReturned =1;
                                drawOther();

                                break;
                        case 3:

                                break;
                        case 4:
                                leave = 1;
                                lcd.clear();
                                return;
                                //break;
                        }
                        /* code */
                }
                if (digitalRead(rot_EncBTN) == LOW) justReturned =0;
        }
        lcd.clear();
}
