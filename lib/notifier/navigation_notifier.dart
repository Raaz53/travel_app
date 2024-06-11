import 'package:flutter/cupertino.dart';

class NavigationNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  setCurrentIndex(int index) {
    _currentIndex = index;

    notifyListeners();
  }
}
