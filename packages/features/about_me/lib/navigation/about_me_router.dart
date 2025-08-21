import 'package:components_library/components_library_export.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart';

@injectable
class AboutMeRouter implements BaseRouter {
  const AboutMeRouter();

  @override
  List<RouteBase> get routes => [];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(
        routes: [
          GoRoute(
            path: AboutMePage.path,
            name: AboutMePage.name,
            builder: (context, state) => const AboutMePage(),
          ),
        ],
      );
}
