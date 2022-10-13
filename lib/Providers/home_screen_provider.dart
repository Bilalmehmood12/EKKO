
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  int _screen = 0;
  int _index = 0;

  int get screen => _screen;
  int get index => _index;

  set index(index) {
    _index = index;
    _screen = index;
    notifyListeners();
  }
  set screen(screen) {
    _screen = screen;
    notifyListeners();
  }
}