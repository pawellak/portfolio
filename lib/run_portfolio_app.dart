import 'package:flutter/material.dart' show StatelessWidget, Widget, runApp;
import 'package:pawellak_portfolio/presentation/portfolio_app_router.dart';

import 'configs/app_settings_wrapper.dart';
import 'configs/l10n_wrapper.dart';

void runPortfolioApp() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(_) => const AppSettingsWrapper(L10nWrapper(PortfolioAppRouter()));
}
