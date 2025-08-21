import 'package:flutter/material.dart' show BuildContext, Column, MainAxisAlignment, StatelessWidget, Text, Widget;

class ProjectListLabelWidget extends StatelessWidget {
  const ProjectListLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Project list label widget')]);
  }
}
