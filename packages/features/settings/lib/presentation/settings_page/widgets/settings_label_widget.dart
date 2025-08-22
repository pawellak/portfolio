import 'dart:ui' show FontStyle, TextAlign;
import 'package:components_library/components_library_export.dart' show Label, ThemeExtensions, WidgetExtension;
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart'
    show BorderRadius, BuildContext, Column, CrossAxisAlignment, EdgeInsets, Spacer, StatelessWidget, Widget;

const _kQuoteFlex = 2;
const _quoteAuthor = 'Steve Jobs';

class SettingsLabelWidget extends StatelessWidget {
  const SettingsLabelWidget({super.key, this.isSpacer = true});

  final bool isSpacer;

  @override
  Widget build(BuildContext context) => ClContainer(
        margin: const EdgeInsets.all(Dimens.dimen32),
        borderRadius: BorderRadius.circular(Dimens.dimen8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: Dimens.dimen16,
          children: [
            if (isSpacer) const Spacer(),
            Label(
              'label.settings.quote',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            ),
            Label(
              _quoteAuthor,
              color: context.colorTokens.textSecondary,
              textAlign: TextAlign.right,
              translate: false,
            ),
            if (isSpacer) const Spacer(flex: _kQuoteFlex),
          ],
        ).addPaddingAll(Dimens.dimen32),
      );
}
