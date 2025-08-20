import 'package:components_library/components_library_export.dart' show ClIcon, Label, ThemeExtensions;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

class AppbarMobileMenuWidget extends StatelessWidget {
  const AppbarMobileMenuWidget({super.key});

  @override
  Widget build(BuildContext context) => MouseRegion(
    cursor: SystemMouseCursors.click,
    child: ClContainer(
      backgroundColor: context.colorTokens.topNavigationBackgroundColor,
      borderRadius: BorderRadius.zero,
      child: Row(
        children: [
          ClIcon(
            path: Icons.menu,
            color: context.colorTokens.topNavigationTitleBackgroundColor,
            onTap: Scaffold.of(context).openDrawer,
          ),
          const Spacer(),
          Label('label.menu.portfolio', color: context.colorTokens.topNavigationTitleBackgroundColor),
          const Spacer(),
        ],
      ),
    ),
  );
}
