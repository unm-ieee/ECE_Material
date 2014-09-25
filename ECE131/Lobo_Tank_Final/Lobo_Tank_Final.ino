#include <LoboTank.h>
#include <tank_Cwrap.h>

int temp_R=0;
int temp_L=0;
int c15=0;



void setup()
{
  enableDebug();
  //testSensors(1000);
  setSpeed(125);
}

void loop()
{
  updateSensors();
  int pattern = 0;
  long rndm = random(0,10);

  
Serial.println(rndm);
//Serial.println(temp_L);
//Serial.println(lf_left);
//Serial.println(lf_mleft);
//Serial.println(lf_mright);
//Serial.println(lf_right);
  
if (lf_left >= 500) pattern += 8;
if (lf_mleft >= 500) pattern += 4;
if (lf_mright >= 500) pattern += 2;
if (lf_right >= 500) pattern += 1;

switch (pattern) {
            case 0:  
                     if (temp_R == 1)
                         turnRight_hard();
                         else
                             turnAround_left();
                     break;
            case 1:  
                     turnRight_slight();
                     temp_R = 1;
                     break;
            case 2: 
                     turnRight_slight();
                     temp_R = 1;
                     break;
            case 3: 
                      delay(25);
                     turnRight_slight();
                     break;
            case 6:  
                     forward();
                     temp_R = 0;
                     c15 = 0;
                     break;
            case 7:  //turn right
                     turnRight_hard();
                     temp_R = 1;
                     break;
            case 8: 
                     turnLeft_slight();
                     temp_R = 0;
                     break;
            case 12: 
                      delay(15);
                     turnLeft_slight();
                     break;
            case 14: //turn left
                     turnLeft_hard();
                     break;
            case 15:
                    delay(25);
                    if (rndm <= 5 && c15 <= 3)
                        turnLeft_hard();
                        else {
                          if (rndm >= 6 && c15 <= 3)
                              turnRight_hard();
                              else {
                                  if (c15 >= 5)
                                      turnRight_hard();
                                      else {
                                        if (c15 >= 10)
                                            stop();
                                      }
                              }
                        }
                    c15++;
                    break;
               }
}


