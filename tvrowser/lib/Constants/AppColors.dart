import 'dart:ui';

import '../main.dart';

class AppColors {
  static Color mainColor = isDarkMode
      ? const Color.fromRGBO(32, 33, 36, 1)
      : const Color.fromRGBO(250, 250, 250, 1);
  static Color secondaryColor = isDarkMode
      ? const Color.fromRGBO(48, 49, 51, 1)
      : const Color.fromRGBO(210, 211, 219, 1);
  static Color textColorLight = isDarkMode
      ? const Color.fromRGBO(210, 211, 219, 1)
      : const Color.fromRGBO(48, 49, 51, 1);
  static Color textColorDark = isDarkMode
      ? const Color.fromRGBO(250, 250, 250, 1)
      : const Color.fromRGBO(32, 33, 36, 1);
  static Color opositeMainColor = isDarkMode
      ? const Color.fromRGBO(210, 211, 219, 1)
      : const Color.fromRGBO(48, 49, 51, 1);
  static Color opositeSecondaryColor = isDarkMode
      ? const Color.fromRGBO(250, 250, 250, 1)
      : const Color.fromRGBO(32, 33, 36, 1);
}
