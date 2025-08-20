import 'package:components_core/components_pub_dev_export.dart' show StatefulNavigationShell;
import 'package:components_core/navigation/app_menu_data.dart' show AppMenuData;
import 'package:components_library/components_library_export.dart' show ContextExtensions, ThemeExtensions;
import 'package:components_library/presentation/home_page/web/widgets/appbar_item_widget.dart' show AppBarItemWidget;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:components_library/widgets/label/label.dart' show Label;
import 'package:flutter/material.dart';

class AppBarDesktopMenuWidget extends StatelessWidget {
  const AppBarDesktopMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      ClContainer(
        backgroundColor: context.colorTokens.topNavigationBackgroundColor,
        width: double.infinity,
        height: Dimens.dimen72,
        borderRadius: BorderRadius.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: Dimens.dimen16,
          children:
              AppMenuData.values.indexed
                  .map(
                    (e) => AppBarItemWidget(
                      item: e.$2,
                      onTap: () {
                        _onMenuItemPressed(context, e.$1);
                      },
                    ),
                  )
                  .toList(),
        ),
      ),
      ClContainer(
        backgroundColor: context.colorTokens.topNavigationTitleBackgroundColor,
        height: Dimens.dimen50,
        borderRadius: BorderRadius.zero,
        padding: EdgeInsets.symmetric(horizontal: context.paddingMobile),
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: Dimens.dimen12),
            Label(
              'label.menu.portfolio',
              color: context.colorTokens.topNavigationBackgroundColor,
              style: context.textTheme.titleLarge,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      ClContainer(
        height: Dimens.dimen1,
        backgroundColor: context.colorTokens.topNavigationTitleBackgroundColor,
        width: double.infinity,
      ),
    ],
  );

  void _onMenuItemPressed(BuildContext context, int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}
