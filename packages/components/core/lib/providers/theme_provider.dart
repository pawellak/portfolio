import 'package:flutter/foundation.dart' show ChangeNotifier;

class ThemeProvider with ChangeNotifier {
  void notifyThemeChanges() {
    notifyListeners();
  }
}
