import 'dart:ui';
import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/data/project_model.dart' show ProjectModel;
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_project_widget.dart'
    show ProjectListProjectWidget;
import 'package:flutter/material.dart';

const _kScreenDividerWidth = 650;
const _kMinScreenGrid = 2.0;
const _kMaxScreenGrid = 4.0;
const _kNumberOfFractional = 1;

class ProjectListSectionGrid extends StatelessWidget {
  const ProjectListSectionGrid({super.key, required this.items});

  final List<ProjectModel> items;

  @override
  Widget build(BuildContext context) {
    final columnItems = _getColumnItems(context);
    return LayoutGrid(
      columnSizes: List.generate(columnItems, (_) => _kNumberOfFractional.fr),
      rowSizes: List.generate(_getRowItems(columnItems), (_) => auto),
      children: items.map((e) => ProjectListProjectWidget(item: e, isSpacer: true)).toList(),
    );
  }

  int _getColumnItems(BuildContext context) =>
      clampDouble(context.screenWidth / _kScreenDividerWidth, _kMinScreenGrid, _kMaxScreenGrid).ceil();

  int _getRowItems(int columnItems) => (items.length / columnItems).ceil();
}
