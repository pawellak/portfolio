import 'package:components_library/components_library_export.dart' show ClIcon, FluentIcons, Label, ThemeExtensions;
import 'package:components_library/widgets/container/cl_container.dart';

import 'package:flutter/material.dart';

class AppbarCompactMenuWidget extends StatelessWidget {
  const AppbarCompactMenuWidget({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
    backgroundColor: context.colorTokens.topNavigationSecondaryBackgroundColor,
    borderRadius: BorderRadius.zero,
    child: Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: ClIcon(
            path: FluentIcons.apps_list_20_regular,
            color: context.colorTokens.topNavigationPrimaryBackgroundColor,
            onTap: () {
              _onIconTap(context);
            },
          ),
        ),
        const Spacer(),
        Label('label.menu.portfolio', color: context.colorTokens.topNavigationPrimaryBackgroundColor),
        const Spacer(),
      ],
    ),
  );

  void _onIconTap(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
