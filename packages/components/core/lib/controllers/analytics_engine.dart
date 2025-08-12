
import 'package:firebase_analytics/firebase_analytics.dart';

abstract class AnalyticsEngine {
  const AnalyticsEngine();

  static final _instance = FirebaseAnalytics.instance;

  static Future<void> userLoginByCredentials() async {
    await _instance.logLogin(loginMethod: '## login by credentials ##');
  }

  static Future<void> userLoginByBiometric() async {
    await _instance.logLogin(loginMethod: '## login by biometric ##');
  }

  static Future<void> userLogoutBy401(String requestId) async {
    await _instance.logLogin(loginMethod: '## logout_by_401 ## $requestId');
  }

  static Future<void> customEvent(String eventName) async {
    await _instance.logEvent(name: eventName);
  }

  static Future<void> userLoginByPin() async {
    await _instance.logLogin(loginMethod: '## login by pin ##');
  }

  static Future<void> setCurrentScreen(String screen) async {
    await _instance.logScreenView(screenName: screen);
  }

  static Future<void> init() async {
    await _instance.setAnalyticsCollectionEnabled(true);
    await AnalyticsEngine.customEvent('init analytics');
  }
}
