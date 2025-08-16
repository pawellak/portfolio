import 'package:flutter/material.dart' show BuildContext, StatelessWidget, Widget, runApp;
import 'package:pawellak_portfolio/configs/setup_l10n.dart';
import 'package:pawellak_portfolio/presentation/home_router.dart';

void runPortfolioApp() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) => setupL10n(const HomeRouter());
}
