import 'package:components_library/components_library_export.dart' show Label, ThemeExtensions;
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_section_grid.dart';
import 'package:flutter/material.dart';

class ProjectListExpandedWidget extends StatelessWidget {
  const ProjectListExpandedWidget({super.key, required this.items});

  final List<ProjectModel> items;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      spacing: Dimens.dimen16,
      children: [
        const SizedBox(height: Dimens.dimen4),
        Label(
          'label.projects.page.title',
          style: context.textTheme.titleMedium,
          color: context.colorTokens.textPrimary,
          textAlign: TextAlign.center,
        ),
        ProjectListSectionGrid(items: items),
      ],
    ),
  );
}
