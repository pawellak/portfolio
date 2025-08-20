import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_library/presentation/home_page/web/widgets/appbar_desktop_menu_widget.dart';
import 'package:components_library/presentation/home_page/web/widgets/appbar_mobile_menu_widget.dart'
    show AppbarMobileMenuWidget;

import 'package:components_library/widgets/adapters/cl_adapter.dart' show ClAdapter;
import 'package:flutter/material.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClAdapter(
    mobile: const AppbarMobileMenuWidget(),
    desktop: AppBarDesktopMenuWidget(navigationShell: navigationShell),
  );
}
