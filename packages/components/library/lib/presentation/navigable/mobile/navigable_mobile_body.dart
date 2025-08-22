import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_library/components_library_export.dart' show AppMenuData, ClScaffold, ThemeExtensions;
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:components_library/widgets/icons/cl_icon.dart';
import 'package:components_library/widgets/label/label.dart';
import 'package:flutter/material.dart';

part 'widgets/bottom_menu_item.dart';

class NavigableMobileBody extends StatelessWidget {
  const NavigableMobileBody({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClScaffold(
    body: Column(
      children: [
        Expanded(child: navigationShell),
        ClContainer(
          padding: const EdgeInsets.only(
            top: Dimens.dimen8,
            bottom: Dimens.dimen32,
            left: Dimens.dimen8,
            right: Dimens.dimen8,
          ),
          borderRadius: BorderRadius.zero,
          backgroundColor: context.colorTokens.bottomNavigationPrimaryColor,
          child: Row(
            children:
                AppMenuData.values
                    .map(
                      (menuItemData) => Expanded(
                        child: _BottomMenuItem(
                          onTap: navigationShell.goBranch,
                          activeIndex: navigationShell.currentIndex,
                          menuItemData: menuItemData,
                          itemIndex: menuItemData.index,
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    ),
  );
}
