import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:flutter/material.dart';

class ClLoadingIndicator extends StatelessWidget {
  const ClLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) => Container(
    color: context.colorTokens.loadingBackgroundColor,
    child: const Center(child: ClImagePathWidget(path: AppImage.pwr)),
  );
}
