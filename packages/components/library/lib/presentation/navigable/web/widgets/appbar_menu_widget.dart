import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_library/presentation/navigable/web//widgets/appbar_expanded_menu_widget.dart';
import 'package:components_library/presentation/navigable/web/widgets/appbar_compact_menu_widget.dart'
    show AppbarCompactMenuWidget;

import 'package:components_library/widgets/adapters/cl_adapter.dart' show ClAdapter;
import 'package:flutter/material.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClAdapter(
    compact: const AppbarCompactMenuWidget(),
    expanded: AppBarExpandedMenuWidget(navigationShell: navigationShell),
  );
}
