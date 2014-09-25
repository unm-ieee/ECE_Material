void DateType::Initialize(int newMonth, int newDay,
  int newYear)
// Post: month is set to newMonth; day is set to
//       newDay; year is set to newYear.
{
  month = newMonth;
  day = newDay;
  year = newYear;
}

int DateType::GetMonth() const
// Post: Class member month is returned.
{
  return month;
}

int DateType::GetDay() const
// Post: Class member day is returned.
{
  return day;
}

int DateType::GetYear() const
// Post: Class member year if returned.
{
  return year;
}

