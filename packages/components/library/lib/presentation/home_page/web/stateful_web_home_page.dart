import 'package:components_library/components_library_export.dart' show StatefulNavigationShell;
import 'package:components_library/presentation/home_page/mobile/widgets/bottom_bar_menu_widget.dart'
    show BottomBarMenuWidget;
import 'package:flutter/material.dart';

class StatefulWebHomePage extends StatelessWidget {
  const StatefulWebHomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => BottomBarMenuWidget(navigationShell: navigationShell);
}
