import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class ProjectCompactWidget extends StatelessWidget {
  const ProjectCompactWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      spacing: Dimens.dimen12,
      children: [
        const SizedBox(),
        ClImagePathWidget(
          width: double.infinity,
          borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen12)),
          backgroundColor: Colors.transparent,
          path: project.shortDescriptionUrl,
          fit: BoxFit.contain,
        ),
        _ProjectSectionHtml(description: project.introduction, imagePath: project.introductionUrl),
        if (project.development.isNotEmpty)
          _ProjectSectionHtml(description: project.development, imagePath: project.developmentUrl),
        if (project.conclusion.isNotEmpty)
          _ProjectSectionHtml(description: project.conclusion, imagePath: project.conclusionUrl),
        if (kIsWeb) const SizedBox(),
      ],
    ),
  );
}

class _ProjectSectionHtml extends StatelessWidget {
  const _ProjectSectionHtml({required this.description, required this.imagePath});

  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) => ClContainer(
    child: Column(
      children: [
        ClHtmlLabel(data: description),
        ClImagePathWidget(
          path: imagePath,
          height: Dimens.dimen350,
          backgroundColor: Colors.transparent,
        ).addPaddingAll(Dimens.dimen20),
      ],
    ),
  );
}
