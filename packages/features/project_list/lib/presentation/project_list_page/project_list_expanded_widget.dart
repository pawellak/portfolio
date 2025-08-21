import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_label_widget.dart';
import 'package:flutter/material.dart';

class ProjectListExpandedWidget extends StatelessWidget {
  const ProjectListExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProjectListLabelWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ProjectList Expanded')],
          ),
        ],
      );
}
