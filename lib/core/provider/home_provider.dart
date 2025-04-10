import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final controller = PageController(initialPage: 1);
  int _selectedIndex = 1;
  int get selectedIndex => _selectedIndex;
  changeIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  toggleLoading() {
    _loading = !_loading;
    notifyListeners();
  }
}
