

volatile int enc_Motor1 =0;
volatile int rot_enc =0;
volatile int enc_Motor2 =0;
volatile int enc_Motor2_OLD =-12;

void Motor1_enc_ISR(){

        //  int m1_Enc_A = digitalRead(motor1_Enc_A);
        int m1_Enc_B = digitalRead(motor1_Enc_B);

        if (m1_Enc_B == 0) {
                enc_Motor1--;
        }
        if (m1_Enc_B == 1) {
                enc_Motor1++;
        }



}
void Motor2_enc_ISR(){
        enc_Motor2_OLD = enc_Motor2;
        //  int m1_Enc_A = digitalRead(motor1_Enc_A);
        int m2_Enc_B = digitalRead(motor2_Enc_B);

        if (m2_Enc_B == 0) {
                enc_Motor2--;
        }
        if (m2_Enc_B == 1) {
                enc_Motor2++;
        }
}

void Rot_enc_ISR(){

        int rot_EncB_Value = digitalRead(rot_EncB);

        if (rot_EncB_Value == 0) {
                rot_enc--;
        }
        if (rot_EncB_Value == 1) {
                rot_enc++;
        }

}
