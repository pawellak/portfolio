import 'package:components_library/components_library_export.dart'
    show GoRouter, StatefulMobileHomePage, StatefulShellRoute, StatefulWebHomePage, getIt;
import 'package:feature_about_me/about_me_feature_impl.dart';
import 'package:feature_about_me/navigation/about_me_router.dart';
import 'package:feature_project_list/navigation/project_list_router.dart';
import 'package:feature_settings/navigation/settings_router.dart';
import 'package:feature_weather/navigation/weather_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainRouter {
  const MainRouter();

  static GoRouter router = GoRouter(
    initialLocation: FeatureAboutMeImpl.featurePath,
    routes: [
      ...getIt<AboutMeRouter>().routes,
      ...getIt<WeatherRouter>().routes,
      ...getIt<ProjectListRouter>().routes,
      ...getIt<SettingsRouter>().routes,
      StatefulShellRoute.indexedStack(
        branches: [
          getIt<AboutMeRouter>().statefulShellBranch,
          getIt<WeatherRouter>().statefulShellBranch,
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
