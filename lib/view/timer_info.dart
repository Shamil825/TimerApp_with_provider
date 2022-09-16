import 'package:flutter/cupertino.dart';

class TimerInfo extends ChangeNotifier {
  int _reminingTime = 60;
  int getReminingtime() => _reminingTime;

  updateRemaningTime() {
    _reminingTime--;
    notifyListeners();
  }
}
