import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'
    show BoxFit, BuildContext, Colors, Column, EdgeInsets, Expanded, Row, SizedBox, StatelessWidget, Widget;

const _kLabelFlex = 2;

class ProjectExpandedWidget extends StatelessWidget {
  const ProjectExpandedWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      spacing: Dimens.dimen36,
      children: [
        const SizedBox(),
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
    padding: const EdgeInsets.only(
      left: Dimens.dimen24,
      right: Dimens.dimen8,
      bottom: Dimens.dimen24,
      top: Dimens.dimen24,
    ),
    child: Row(
      children: [
        Expanded(flex: _kLabelFlex, child: ClHtmlLabel(data: description)),
        Expanded(
          child: ClImagePathWidget(
            backgroundColor: Colors.transparent,
            path: imagePath,
            fit: BoxFit.contain,
            padding: EdgeInsets.zero,
          ).addPaddingAll(Dimens.dimen20),
        ),
      ],
    ),
  );
}
