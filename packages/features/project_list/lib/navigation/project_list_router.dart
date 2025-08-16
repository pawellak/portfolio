import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_page.dart';

@injectable
class ProjectListRouter implements BaseRouter {
  const ProjectListRouter();

  @override
  List<RouteBase> get routes => [];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(routes: [const ProjectListPage().toRoute]);
}
