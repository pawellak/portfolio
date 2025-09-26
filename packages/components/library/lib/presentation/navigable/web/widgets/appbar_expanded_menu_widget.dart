import 'package:components_core/components_pub_dev_export.dart'
    show StatefulNavigationShell, StringTranslateExtension;
import 'package:components_library/components_library_export.dart' show ContextExtensions, ThemeExtensions;
import 'package:components_library/navigation/app_menu_data.dart';
import 'package:components_library/presentation/navigable/controller/navigable_controller.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:components_library/widgets/label/label.dart' show Label;
import 'package:flutter/material.dart';

part 'appbar_expanded_item_widget.dart';

class AppBarExpandedMenuWidget extends StatelessWidget {
  const AppBarExpandedMenuWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      ClContainer(
        backgroundColor: context.colorTokens.topNavigationSecondaryBackgroundColor,
        width: double.infinity,
        height: Dimens.dimen72,
        borderRadius: BorderRadius.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: Dimens.dimen16,
          children:
              AppMenuData.values.indexed
                  .map(
                    (e) => _AppBarExpandedItemWidget(
                      item: e.$2,
                      onTap: () {
                        NavigableController.onTap(context: context, navigationShell: navigationShell, index: e.$1);
                      },
                    ),
                  )
                  .toList(),
        ),
      ),
      ClContainer(
        backgroundColor: context.colorTokens.topNavigationPrimaryBackgroundColor,
        height: Dimens.dimen50,
        borderRadius: BorderRadius.zero,
        padding: EdgeInsets.symmetric(horizontal: context.desktopPadding),
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: Dimens.dimen12),
            Label(
              'label.menu.portfolio',
              color: context.colorTokens.topNavigationSecondaryBackgroundColor,
              style: context.textTheme.titleLarge,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      ClContainer(
        height: Dimens.dimen1,
        backgroundColor: context.colorTokens.topNavigationPrimaryBackgroundColor,
        width: double.infinity,
      ),
    ],
  );
}
