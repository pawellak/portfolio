import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_project_list/presentation/project_list_page/bloc/project_list_cubit.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_compact_widget.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_expanded_widget.dart';
import 'package:flutter/material.dart';

class ProjectListPage extends BasePage<ProjectListCubit> {
  const ProjectListPage({super.key});

  static const String name = 'project-list-page';
  static const String path = '/$name';

  @override
  ClAdapter buildPage(BuildContext context) =>
      const ClAdapter(expanded: ProjectListExpandedWidget(), compact: ProjectListCompactWidget());
}
