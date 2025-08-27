import 'package:components_library/components_library_export.dart'
    show GoRouter, NavigableMobileBody, NavigableWebBody, StatefulShellRoute, getIt;
import 'package:feature_about_me/feature_about_me_impl.dart';
import 'package:feature_about_me/navigation/about_me_router.dart';
import 'package:feature_project_list/navigation/project_list_router.dart';
import 'package:feature_settings/navigation/settings_router.dart';
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;

final GoRouter appRouter = GoRouter(
  initialLocation: FeatureAboutMeImpl.path,
  debugLogDiagnostics: kDebugMode,
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
                  ? NavigableWebBody(navigationShell: navigationShell)
                  : NavigableMobileBody(navigationShell: navigationShell),
    ),
  ],
);
