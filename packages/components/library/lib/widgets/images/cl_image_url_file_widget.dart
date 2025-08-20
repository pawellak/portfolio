import 'dart:io';
import 'package:components_library/widgets/loading/cl_shimmer.dart';
import 'package:flutter/material.dart';

const _defaultBorderRadius = 8.0;

class ClImageFileWidget extends StatelessWidget {
  const ClImageFileWidget({super.key, required this.imagePath, BorderRadius? borderRadius})
    : _borderRadius = borderRadius;

  final String imagePath;
  final BorderRadius? _borderRadius;

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: _borderRadius ?? BorderRadius.circular(_defaultBorderRadius),
    child: Image.asset(imagePath),
  );
}
