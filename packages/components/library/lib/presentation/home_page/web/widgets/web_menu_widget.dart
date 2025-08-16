import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:flutter/material.dart';

class WebMenuWidget extends StatelessWidget {
  const WebMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Center(child: navigationShell);
}
