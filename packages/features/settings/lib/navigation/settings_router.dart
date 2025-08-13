import 'package:components_library/components_library_export.dart';
import 'package:feature_settings/presentation/settings_page/settings_page.dart' show SettingsPage;

@injectable
class SettingsRouter implements BaseRouter {
  const SettingsRouter();

  @override
  List<RouteBase> get routes => [const SettingsPage().toRoute];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(routes: []);
}
