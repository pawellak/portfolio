import 'package:components_library/components_library_export.dart'
    show GoRouter, StatefulMobileHomePage, StatefulShellRoute, StatefulWebHomePage, getIt;
import 'package:feature_about_me/feature_about_me_impl.dart';
import 'package:feature_about_me/navigation/about_me_router.dart';
import 'package:feature_project_list/navigation/project_list_router.dart';
import 'package:feature_settings/navigation/settings_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainRouter {
  const MainRouter();

  static GoRouter router = GoRouter(
    initialLocation: FeatureAboutMeImpl.featurePath,
    routes: [
      StatefulShellRoute.indexedStack(
        branches: [
          getIt<AboutMeRouter>().statefulShellBranch,
          getIt<ProjectListRouter>().statefulShellBranch,
          getIt<SettingsRouter>().statefulShellBranch,
        ],
        builder:
            (_, __, navigationShell) =>
                kIsWeb
                    ? StatefulWebHomePage(navigationShell: navigationShell)
                    : StatefulMobileHomePage(navigationShell: navigationShell),
      ),
    ],
  );
}
