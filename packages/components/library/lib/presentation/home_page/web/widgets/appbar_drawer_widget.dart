import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart' show ClContainer;
import 'package:flutter/material.dart';

class AppbarDrawerWidget extends StatelessWidget {
  const AppbarDrawerWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topLeft,
    child: ClContainer(
      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(Dimens.dimen12)),
      child: Column(mainAxisSize: MainAxisSize.min, children: item(context)),
    ),
  );

  List<Widget> item(BuildContext context) =>
      AppMenuData.values.indexed
          .map(
            (e) => MouseRegion(
              cursor: SystemMouseCursors.click,
              child: ClContainer(
                onTap: () {
                  _onMenuItemPressed(context, e.$1);
                  Scaffold.of(context).closeDrawer();
                },
                width: Dimens.dimen100,
                padding: const EdgeInsets.all(Dimens.dimen8),
                margin: const EdgeInsets.all(Dimens.dimen4),
                border: Border.all(color: context.colorTokens.topNavigationBackgroundColor),
                child: Label(e.$2.label, textAlign: TextAlign.center),
              ),
            ),
          )
          .toList();

  void _onMenuItemPressed(BuildContext context, int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}
