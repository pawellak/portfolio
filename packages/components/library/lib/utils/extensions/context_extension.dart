import 'dart:ui' show clampDouble;

import 'package:components_library/widgets/loading/loading_overlay.dart';
import 'package:flutter/material.dart' show BuildContext, MediaQuery;

extension ContextExtensions on BuildContext {
  void showLoader() => LoadingOverlay.of(this)?.show();

  void hideLoader() => LoadingOverlay.of(this)?.hide();

  bool get isCompact => screenWidth < 600;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get desktopPadding => clampDouble((screenWidth - 800) / 2, 0, double.infinity);
}
