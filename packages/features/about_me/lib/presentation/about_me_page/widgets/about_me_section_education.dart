import 'package:components_library/components_library_export.dart'
    show ClImagePathWidget, FluentIcons, Label, ThemeExtensions;
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:feature_about_me/presentation/widgets/about_me_section_widget.dart';
import 'package:flutter/material.dart';

class AboutMeSectionEducation extends StatelessWidget {
  const AboutMeSectionEducation({super.key});

  @override
  Widget build(BuildContext context) => const AboutMeSectionWidget(
    icon: FluentIcons.hat_graduation_16_regular,
    title: 'label.about_me.education.title',
    child: Column(
      spacing: Dimens.dimen20,
      children: [
        _AboutMeEducationWidget(labelKey: 'label.about_me.education.msc_eng'),
        _AboutMeEducationWidget(labelKey: 'label.about_me.education.eng'),
      ],
    ),
  );
}

class _AboutMeEducationWidget extends StatelessWidget {
  const _AboutMeEducationWidget({required this.labelKey});

  final String labelKey;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: Dimens.dimen12,
    children: [
      ClImagePathWidget(
        path: AppImage.pwr,
        width: Dimens.dimen64,
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen8)),
        imageBorderRadius: BorderRadius.zero,
        backgroundColor: context.colorTokens.iconBackgroundColor,
        padding: const EdgeInsets.all(Dimens.dimen6),
      ),
      Expanded(
        child: Column(
          spacing: Dimens.dimen2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Label('$labelKey.institution', style: context.textTheme.bodyLarge, fontWeight: FontWeight.bold),
            Label('$labelKey.degree', style: context.textTheme.bodyLarge),
            Label('$labelKey.major', style: context.textTheme.bodyMedium),
            Label('$labelKey.period', style: context.textTheme.bodySmall, color: context.colorTokens.textSecondary),
          ],
        ),
      ),
    ],
  );
}
