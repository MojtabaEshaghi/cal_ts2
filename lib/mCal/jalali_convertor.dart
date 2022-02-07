import 'package:cal_ts2/mCal/my_const.dart';

class JalaliConvertor {
  bool isLeapYear(int year) {
    int result = _dive(year, 33);
    print(result);
    return remainingLeapYear.contains(result);
  }

  _dive(int a, int b) => a % b;
}

void main(List<String> inputs) {
  JalaliConvertor jalaliConvertor = JalaliConvertor();
  print(jalaliConvertor.isLeapYear(1399));
}
