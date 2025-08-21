import 'dart:ui';

import 'package:components_library/components_library_export.dart' show Label, WidgetExtension;
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart' show BuildContext, Center, StatelessWidget, Widget;

class SettingsLabelWidget extends StatelessWidget {
  const SettingsLabelWidget({super.key});

  @override
  Widget build(BuildContext context) =>
      const Center(child: Label('label.settings.quote',textAlign: TextAlign.center,)).addPaddingAll(Dimens.dimen32);
}
