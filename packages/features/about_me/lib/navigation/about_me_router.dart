import 'package:components_library/components_library_export.dart';

import '../presentation/about_me_page/about_me_page.dart';

@injectable
class AboutMeRouter implements BaseRouter {
  const AboutMeRouter();

  @override
  List<RouteBase> get routes => [
        const AboutMePage().toRoute,
      ];

  @override
  StatefulShellBranch get bottomBarRoute => StatefulShellBranch(routes: []);
}
