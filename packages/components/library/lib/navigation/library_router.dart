import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/navigation/base_router.dart';
import 'package:components_library/presentation/no_internet/no_internet_page.dart';

@singleton
class LibraryRouter extends BaseRouter {
  const LibraryRouter();

  @override
  StatefulShellBranch? get bottomBarRoute => null;

  @override
  List<RouteBase> get routes => [
    GoRoute(path: NoInternetPage.path, name: NoInternetPage.name, builder: (context, state) => const NoInternetPage()),
  ];
}
