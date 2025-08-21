import 'package:flutter/material.dart';

class ClImagePathWidget extends StatelessWidget {
  const ClImagePathWidget({super.key, required this.path, this.width});

  final String path;
  final double? width;

  @override
  Widget build(BuildContext context) => Image.asset(path, width: width);
}
