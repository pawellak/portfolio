import 'package:components_library/components_library_export.dart';
import 'package:components_library/presentation/navigable/web/widgets/appbar_menu_widget.dart';
import 'package:components_library/presentation/navigable/web/widgets/drawer_widget.dart' show DrawerWidget;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

const _kAppFooterLabel = '❖  Paweł Łąk • Flutter 2025  ❖';

class NavigableWebBody extends StatelessWidget {
  const NavigableWebBody({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClScaffold(
    drawer: DrawerWidget(navigationShell: navigationShell),
    body: Column(
      children: [
        AppBarMenuWidget(navigationShell: navigationShell),
        Expanded(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: context.desktopPadding), child: navigationShell),
        ),
        _buildFooter(context),
      ],
    ),
  );

  ClContainer _buildFooter(BuildContext context) => ClContainer(
    backgroundColor: context.colorTokens.bottomNavigationPrimaryColor,
    borderRadius: BorderRadius.zero,
    padding: EdgeInsets.zero,
    width: double.infinity,
    height: Dimens.dimen34,
    child: Center(
      child: Label(_kAppFooterLabel, color: context.colorTokens.bottomNavigationSecondaryColor, translate: false),
    ),
  );
}
