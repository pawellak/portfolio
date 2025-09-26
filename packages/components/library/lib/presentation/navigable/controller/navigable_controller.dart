import 'package:components_library/components_library_export.dart';
import 'package:components_library/navigation/app_menu_data.dart';
import 'package:flutter/material.dart' show BuildContext;

class NavigableController {
  static void onTap({
    required BuildContext context,
    required StatefulNavigationShell navigationShell,
    required int index,
  }) {
    if (AppMenuData.projectList.index == index) {
      context.goNamed(
        getIt<FeatureProjectList>().projectListPageName,
        extra: getIt<AppSettingsRepository>().currentLocale,
      );
    } else {
      navigationShell.goBranch(index, initialLocation: true);
    }
  }
}
