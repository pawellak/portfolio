import 'dart:ui' show clampDouble;

import 'package:components_library/widgets/loading/loading_overlay.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showLoader() => LoadingOverlay.of(this)?.show();

  void hideLoader() => LoadingOverlay.of(this)?.hide();

  bool get isMobile => screenWidth < 600;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get paddingMobile => clampDouble((screenWidth - 1000) / 2, 0, double.infinity);
}
