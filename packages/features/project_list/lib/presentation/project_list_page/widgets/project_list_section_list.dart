import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_project_widget.dart'
    show ProjectListProjectWidget;
import 'package:flutter/material.dart';

class ProjectListSectionList extends StatelessWidget {
  const ProjectListSectionList({super.key, required this.items});

  final List<ProjectModel> items;

  @override
  Widget build(BuildContext context) => ListView(
    primary: false,
    shrinkWrap: true,
    children: items.map((e) => ProjectListProjectWidget(item: e)).toList(),
  );
}
