import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget addPaddingAll(
    double padding,
  ) =>
      Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget addSymmetricPadding({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Widget addPadding({
    double left = 0.0,
    double right = 0.0,
    double top = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );

  Widget addEdgePadding(EdgeInsetsGeometry? padding) => padding == null
      ? this
      : Padding(
          padding: padding,
          child: this,
        );
}
