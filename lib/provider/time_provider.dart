import 'package:flutter/foundation.dart';

class TimeProvider with ChangeNotifier {
  int _hr = DateTime.now().hour;
  int _min = DateTime.now().minute;
  int _sec = DateTime.now().second;
  int _milsec = DateTime.now().millisecond;

  int get hr => _hr;
  int get min => _min;
  int get sec => _sec;
  int get milsec => _milsec;

  void getTime() {
    _hr = DateTime.now().hour;
    _min = DateTime.now().minute;
    _sec = DateTime.now().second;
    _milsec = DateTime.now().millisecond;

    notifyListeners();
  }
}
