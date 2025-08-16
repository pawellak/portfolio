import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';
import 'package:pawellak_portfolio/core/navigation/main_router.dart';

class HomeRouter extends StatelessWidget {
  const HomeRouter({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    themeMode: ThemeMode.light,
    routerConfig: MainRouter.router,
  );
}
