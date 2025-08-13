import 'package:components_library/components_library_export.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_page.dart' show AboutMePage;

@injectable
class AboutMeRouter implements BaseRouter {
  const AboutMeRouter();

  @override
  List<RouteBase> get routes => [const AboutMePage().toRoute];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(routes: []);
}
