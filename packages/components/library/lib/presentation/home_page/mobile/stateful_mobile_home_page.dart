import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:flutter/material.dart';

class StatefulMobileHomePage extends StatelessWidget {
  const StatefulMobileHomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Mobile'),);
}
