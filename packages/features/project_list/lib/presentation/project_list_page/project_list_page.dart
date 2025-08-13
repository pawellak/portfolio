import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_project_list/presentation/project_list_page/bloc/project_list_cubit.dart';
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_desktop_widget.dart';
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_mobile_widget.dart';

import 'package:flutter/material.dart';

class ProjectListPage extends BasePage<ProjectListCubit> {
  const ProjectListPage({super.key});

  static const String path = '/$name';
  static const String name = 'about-me';

  @override
  String get goName => name;

  @override
  String get goPath => goPath;

  @override
  ClAdapter buildPage(BuildContext context) =>
      const ClAdapter(desktop: ProjectListDesktopWidget(), mobile: ProjectListMobileWidget());
}
