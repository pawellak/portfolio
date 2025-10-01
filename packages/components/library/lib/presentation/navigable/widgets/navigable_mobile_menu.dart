import 'dart:ui' show Color, TextAlign;

import 'package:components_library/components_library_export.dart';
import 'package:components_library/navigation/app_menu_data.dart';
import 'package:components_library/presentation/navigable/controller/navigable_controller.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart'
    show BorderRadius, BuildContext, Column, EdgeInsets, Expanded, Row, StatelessWidget, Widget;

part '_bottom_menu_item.dart';

class NavigableMobileMenu extends StatelessWidget {
  const NavigableMobileMenu({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => ClContainer(
    padding: const EdgeInsets.only(
      top: Dimens.dimen8,
      bottom: Dimens.dimen16,
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
                    onTap: (index) {
                      NavigableController.onTap(context: context, navigationShell: navigationShell, index: index);
                    },
                    activeIndex: navigationShell.currentIndex,
                    menuItemData: menuItemData,
                    itemIndex: menuItemData.index,
                  ),
                ),
              )
              .toList(),
    ),
  );
}
