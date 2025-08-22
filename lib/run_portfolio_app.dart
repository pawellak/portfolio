import 'package:flutter/material.dart' show StatelessWidget, Widget, runApp;
import 'package:pawellak_portfolio/configs/setup_l10n.dart';
import 'package:pawellak_portfolio/configs/setup_providers.dart';
import 'package:pawellak_portfolio/presentation/portfolio_app_router.dart';

void runPortfolioApp() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(_) => const AppSettingsProviderWrapper(AppSettingsL10nWrapper(PortfolioAppRouter()));
}
