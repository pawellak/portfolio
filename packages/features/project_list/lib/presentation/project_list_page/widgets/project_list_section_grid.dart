import 'dart:ui';
import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/data/project_model.dart' show ProjectModel;
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_project_widget.dart'
    show ProjectListProjectWidget;
import 'package:flutter/material.dart';

class ProjectListSectionGrid extends StatelessWidget {
  const ProjectListSectionGrid({super.key, required this.items});

  final List<ProjectModel> items;

  @override
  Widget build(BuildContext context) {
    final columnItems = clampDouble(context.screenWidth / 600, 2, 4).ceil();
    final rowItems = (items.length / columnItems).ceil();
    return LayoutGrid(
      columnSizes: List.generate(columnItems, (_) => 1.fr),
      rowSizes: List.generate(rowItems, (_) => auto),
      children: items.map((e) => ProjectListProjectWidget(item: e)).toList(),
    );
  }
}
