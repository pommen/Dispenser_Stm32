
void pause();
void showSetting();

void showSetting() {
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Kp: ");
        lcd.print(Kp);
        lcd.setCursor(0,1);

        lcd.print("Ki: ");
        lcd.print(Ki);
        lcd.setCursor(0,2);

        lcd.print("Kd: ");
        lcd.print(Kd);
        pause();
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Current: ");
        lcd.print(motorCurrent);
        lcd.setCursor(0,1);
        lcd.print("Max Speed: ");
        lcd.print(motorSpeed);
        pause();
        lcd.clear();
}

void pause(){
        int btn_rel =0;
        while(1) {
                if(digitalRead(rot_EncBTN) == LOW) btn_rel =1;
                if (digitalRead(rot_EncBTN) == HIGH && btn_rel == 1) {
                        return;
                }
        }

}
