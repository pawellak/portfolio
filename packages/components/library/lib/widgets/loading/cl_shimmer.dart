import 'package:components_library/resources/dimens.dart';
import 'package:components_library/utils/extensions/theme_extensions.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ClShimmer extends StatelessWidget {
  const ClShimmer({super.key, this.height, this.width, this.borderRadius, this.padding});

  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.colorTokens.shimmerBaseColor,
        highlightColor: context.colorTokens.shimmerHighlightColor,
        child: ClContainer(
          padding: padding,
          width: width ?? double.infinity,
          borderRadius: borderRadius,
          child: SizedBox(height: height ?? Dimens.dimen20, width: width),
        ),
      );
}
