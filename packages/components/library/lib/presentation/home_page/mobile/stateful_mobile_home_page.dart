import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_library/presentation/home_page/mobile/widgets/bottom_bar_menu_widget.dart';
import 'package:flutter/material.dart';

class StatefulMobileHomePage extends StatelessWidget {
  const StatefulMobileHomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: navigationShell, bottomNavigationBar: BottomBarMenuWidget(navigationShell: navigationShell));
}
