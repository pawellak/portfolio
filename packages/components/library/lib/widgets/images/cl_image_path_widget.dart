import 'package:flutter/material.dart';

class ClImagePathWidget extends StatelessWidget {
  const ClImagePathWidget({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) => Image.asset(path);
}
