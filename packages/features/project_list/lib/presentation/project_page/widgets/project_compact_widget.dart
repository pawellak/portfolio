import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:flutter/material.dart';

class ProjectCompactWidget extends StatelessWidget {
  const ProjectCompactWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) => Column(
    spacing: Dimens.dimen12,
    children: [
      ClImagePathWidget(
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen12)),
        path: project.shortDescriptionUrl,
        fit: BoxFit.fitWidth,
      ),
      _ProjectSectionHtml(description: project.introduction, imagePath: project.introductionUrl),
      if (project.development.isNotEmpty)
        _ProjectSectionHtml(description: project.development, imagePath: project.developmentUrl),
      if (project.conclusion.isNotEmpty)
        _ProjectSectionHtml(description: project.conclusion, imagePath: project.conclusionUrl),
    ],
  );
}

class _ProjectSectionHtml extends StatelessWidget {
  const _ProjectSectionHtml({required this.description, required this.imagePath});

  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      ClHtmlLabel(data: description),
      ClImagePathWidget(path: imagePath, height: 350).addPaddingAll(Dimens.dimen20),
    ],
  );
}
