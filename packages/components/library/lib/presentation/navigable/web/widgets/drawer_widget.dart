import 'package:components_library/components_library_export.dart';
import 'package:components_library/navigation/app_menu_data.dart';
import 'package:components_library/presentation/navigable/controller/navigable_controller.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart' show ClContainer;
import 'package:flutter/material.dart';

part 'drawer_item_widget.dart';

const _kBorderAlpha = 100;

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topLeft,
    child: ClContainer(
      backgroundColor: context.colorTokens.topNavigationSecondaryBackgroundColor,
      border: Border.all(color: context.colorTokens.topNavigationPrimaryBackgroundColor.withAlpha(_kBorderAlpha)),
      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(Dimens.dimen16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:
            AppMenuData.values.indexed
                .map((e) => _DrawerItemWidget(navigationShell: navigationShell, index: e.$1, item: e.$2))
                .toList(),
      ),
    ),
  );
}
