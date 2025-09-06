import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_page.dart';
import 'package:feature_project_list/presentation/project_page/project_page.dart';
import 'package:flutter/material.dart';

@injectable
class ProjectListRouter implements BaseRouter {
  const ProjectListRouter();

  @override
  List<RouteBase> get routes => [];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(
    routes: [
      GoRoute(
        path: ProjectListPage.path,
        name: ProjectListPage.name,
        routes: [
          GoRoute(
            path: '${ProjectPage.path}/:jobTitle',
            name: ProjectPage.name,
            pageBuilder:
                (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: ProjectPage(initialParams: state.pathParameters['jobTitle']),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
          ),
        ],
        builder: (context, state) {
          final locale = state.extra as String?;
          return ProjectListPage(key: locale == null ? UniqueKey() : Key(locale));
        },
      ),
    ],
  );
}
