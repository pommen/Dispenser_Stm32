

LiquidCrystal_I2C lcd(0x3f,20,4);

void Menu(){


        int marker = 0;
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("    Main menu");
        lcd.setCursor(1, 1);
        lcd.print("Motor options");
        lcd.setCursor(1, 2);
        lcd.print("Input options");



}
