import 'package:flutter/material.dart';

class URLDisplayProvider extends ChangeNotifier {
  Map<int, String> displayUrl =  Map();
  String initailUrl = "https://www.google.com";

  void setUrl(int index, String Url) {
    displayUrl[index] = Url;
    notifyListeners();
  }
}
