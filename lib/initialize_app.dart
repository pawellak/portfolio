import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';
import 'package:pawellak_portfolio/core/di/get_it.dart';

Future<void> initializeApp(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environment);
  await EasyLocalization.ensureInitialized();
}
