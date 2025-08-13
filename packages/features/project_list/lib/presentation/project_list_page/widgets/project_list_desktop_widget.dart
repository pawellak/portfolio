import 'package:flutter/material.dart';

class ProjectListDesktopWidget extends StatelessWidget {
  const ProjectListDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [Center(child: Text('ProjectList1'))],
          ),
          Column(
            children: [Center(child: Text('ProjectList2'))],
          ),
        ],
      );
}
