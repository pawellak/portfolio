import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:flutter/material.dart';

class MobileMenuWidget extends StatelessWidget {
  const MobileMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Center(child: navigationShell);
}
