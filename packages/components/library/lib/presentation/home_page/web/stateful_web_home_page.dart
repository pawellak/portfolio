import 'package:components_library/components_library_export.dart' show StatefulNavigationShell;

import 'package:components_library/presentation/home_page/web/widgets/web_menu_widget.dart';
import 'package:flutter/material.dart';

class StatefulWebHomePage extends StatelessWidget {
  const StatefulWebHomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(body: WebMenuWidget(navigationShell: navigationShell));
}
