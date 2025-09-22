import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/app_colors.dart' show AppColors;
import 'package:components_library/resources/themes/app_themes.dart';
import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget;
import 'package:pawellak_portfolio/core/navigation/main_router.dart';

class PortfolioAppRouter extends StatelessWidget {
  const PortfolioAppRouter({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    themeAnimationDuration: Duration.zero,
    localizationsDelegates: context.localizationDelegates,
    color: AppColors.cPrimary,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    theme: AppThemes.appThemeLight,
    darkTheme: AppThemes.appThemeDark,
    themeMode: context.watch<AppSettingsProvider>().currentThemeMode,
    routerConfig: appRouter,
  );
}
