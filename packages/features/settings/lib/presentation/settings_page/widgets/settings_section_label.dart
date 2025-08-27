import 'package:components_library/components_library_export.dart' show Label, ThemeExtensions, WidgetExtension;
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        FontStyle,
        MainAxisSize,
        StatelessWidget,
        TextAlign,
        Widget;

const _quoteAuthor = 'Steve Jobs';

class SettingsSectionLabel extends StatelessWidget {
  const SettingsSectionLabel({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
        margin: const EdgeInsets.all(Dimens.dimen32),
        borderRadius: BorderRadius.circular(Dimens.dimen8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          spacing: Dimens.dimen20,
          children: [
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
          ],
        ).addPaddingAll(Dimens.dimen16),
      );
}
