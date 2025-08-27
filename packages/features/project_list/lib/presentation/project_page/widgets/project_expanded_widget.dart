import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:flutter/material.dart' show BuildContext, Column, Expanded, Row, SizedBox, StatelessWidget, Widget;

class ProjectExpandedWidget extends StatelessWidget {
  const ProjectExpandedWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) => Column(
    spacing: Dimens.dimen36,
    children: [
      const SizedBox(height: Dimens.dimen12),
      _ProjectSectionHtml(description: project.introduction, imagePath: project.introductionUrl),
      if (project.development.isNotEmpty)
        _ProjectSectionHtml(description: project.development, imagePath: project.developmentUrl),
      if (project.conclusion.isNotEmpty)
        _ProjectSectionHtml(description: project.conclusion, imagePath: project.conclusionUrl),
      const SizedBox(height: Dimens.dimen12),
    ],
  );
}

class _ProjectSectionHtml extends StatelessWidget {
  const _ProjectSectionHtml({required this.description, required this.imagePath});

  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(flex: 2, child: ClHtmlLabel(data: description)),
      Expanded(child: ClImagePathWidget(path: imagePath).addPaddingAll(Dimens.dimen20)),
    ],
  );
}
