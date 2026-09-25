import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_library/components_library_export.dart' show ClScaffold;
import 'package:components_library/presentation/navigable/widgets/navigable_mobile_menu.dart';

import 'package:flutter/material.dart';

class NavigableMobileBody extends StatelessWidget {
  const NavigableMobileBody({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClScaffold(
    body: Column(children: [Expanded(child: navigationShell), NavigableMobileMenu(navigationShell: navigationShell)]),
  );
}
