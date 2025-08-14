import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_page.dart';

@Singleton(as: FeatureProjectList)
class FeatureProjectListImpl implements FeatureProjectList {
  const FeatureProjectListImpl();

  static const String featureName = ProjectListPage.name;
  static const String featurePath = ProjectListPage.path;

  @override
  String get path => ProjectListPage.path;

  @override
  String get name => ProjectListPage.name;
}
