import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart' show BuildContext, UniqueKey;

class NavigableController {
  static void onTap({
    required BuildContext context,
    required StatefulNavigationShell navigationShell,
    required int index,
  }) {
    if (AppMenuData.projects.index == index) {
      context.goNamed(getIt<FeatureProjectList>().projectListPageName, extra: UniqueKey());
    } else {
      navigationShell.goBranch(index, initialLocation: true);
    }
  }
}
