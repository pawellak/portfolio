import 'package:components_library/components_library_export.dart';
import 'package:components_library/navigation/app_menu_data.dart';
import 'package:flutter/material.dart' show BuildContext;

class NavigableController {
  static void onTap({
    required BuildContext context,
    required StatefulNavigationShell navigationShell,
    required int index,
  }) {
    switch (AppMenuData.values[index]) {
      case AppMenuData.projectList:
        _goNamedWithLocale(context, getIt<FeatureProjectList>().pageName);
      case AppMenuData.cv:
        _goNamedWithLocale(context, getIt<FeatureCurriculumVitae>().pageName);
      case AppMenuData.contact:
        _goBranchWithInitial(navigationShell, index);
      case AppMenuData.settings:
        _goBranchWithInitial(navigationShell, index);
    }
  }

  static void _goNamedWithLocale(BuildContext context, String name) {
    context.goNamed(name, extra: getIt<AppSettingsRepository>().currentLocale);
  }

  static void _goBranchWithInitial(StatefulNavigationShell navigationShell, int index) {
    navigationShell.goBranch(index, initialLocation: true);
  }
}
