import 'dart:io';
import 'package:components_library/widgets/loading/cl_shimmer.dart';
import 'package:flutter/material.dart';

const _defaultBorderRadius = 8.0;

class ClImageFileWidget extends StatelessWidget {
  const ClImageFileWidget({
    super.key,
    required File? imageUrl,
    this.customKey,
    BorderRadius? borderRadius,
    this.aspectRatio = 1.0,
  }) : _borderRadius = borderRadius,
       _imageUrl = imageUrl;

  final File? _imageUrl;
  final String? customKey;
  final BorderRadius? _borderRadius;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: _borderRadius ?? BorderRadius.circular(_defaultBorderRadius),
    child:
        _imageUrl != null
            ? AspectRatio(aspectRatio: aspectRatio, child: Image.file(_imageUrl, fit: BoxFit.cover))
            : _buildShimmer(),
  );

  Widget _buildShimmer() => ClShimmer(borderRadius: _borderRadius, height: 300);
}
