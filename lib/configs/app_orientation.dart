import 'package:flutter/services.dart';

abstract class AppOrientation {
  static Future<void> setPortraitOnly() async => SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      );
}
