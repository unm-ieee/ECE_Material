class DateType 
{
public:
  void  Initialize(int, int, int);
  // Initializes month, day, and year.
  int GetMonth() const;			
  // Returns month.
  int GetDay() const;			
  // Returns day.
  int GetYear() const;
  // Returns year.
private:
  int month;
  int day;
  int year;
};

