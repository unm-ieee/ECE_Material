/*-- Timer.h ---------------------------------------------------
 
  This header file defines a class Timer that models a 
  countdown timer.

  Basic operations:
    constructor:       constructs a Timer object
    set():             mutator to set/reset the timer
    tick():            decrease timer by 1 time unit (minute)
    hasTimeLeft():     checks if any time remains
    timeRemaining():   determines how much time remains
 --------------------------------------------------------------*/

#ifndef TIMER
#define TIMER

class Timer
{
 public:
  /***** Function Members *****/
  /***** Constructor *****/
  Timer (int initTime = 0);
  /*----------------------------------------------------------
    Construct a Timer object.

    Precondition:  The initial value initTime to start the
        timer is received.
    Postcondition: myMinutes has been initialized to 
        initTime minutes (default 0).
      
  -----------------------------------------------------------*/

  /***** Set timer *****/
  void set(int minutes);
  /*----------------------------------------------------------
    Set/reset the timer.

    Precondition:  None
    Postcondition: myMinutes has been set to minutes.      
  -----------------------------------------------------------*/

  /***** Decrement timer *****/
  void tick();
  /*----------------------------------------------------------
    Advance the clock one minute.

    Precondition:  None
    Postcondition: myMinutes has been decremented by 1.      
  -----------------------------------------------------------*/

  /***** Check time remaining *****/
  int timeRemaining() const;
  /*----------------------------------------------------------
    Find how much time remains on the countdown timer.

    Precondition:  None
    Postcondition: Time left before timer runs out is 
        returned.      
  -----------------------------------------------------------*/

 private:
  /***** Data Members *****/
   int myMinutes;
};  // end of class declaration

#endif
