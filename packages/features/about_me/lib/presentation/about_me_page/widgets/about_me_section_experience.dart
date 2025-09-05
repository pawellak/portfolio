import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_about_me/presentation/widgets/about_me_section_widget.dart';
import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        Expanded,
        FontWeight,
        Radius,
        Row,
        StatelessWidget,
        Widget;

class AboutMeSectionExperience extends StatelessWidget {
  const AboutMeSectionExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutMeSectionWidget(
      icon: FluentIcons.book_compass_24_regular,
      title: 'label.about_me.experience.title',
      child: Column(
        spacing: Dimens.dimen12,
        children: [
          _AboutMeExperienceWidget(labelKey: 'sygnisoft', imagePath: AppImage.sygnisoft),
          _AboutMeExperienceWidget(labelKey: 'svantek', imagePath: AppImage.svantek),
          _AboutMeExperienceWidget(labelKey: 'falcon_acoustics', imagePath: AppImage.falconAcoustics),
          _AboutMeExperienceWidget(labelKey: 'ecoplan', imagePath: AppImage.ecoplan),
        ],
      ),
    );
  }
}

class _AboutMeExperienceWidget extends StatelessWidget {
  const _AboutMeExperienceWidget({required this.labelKey, required this.imagePath});

  final String labelKey;
  final String imagePath;

  @override
  Widget build(BuildContext context) => ClContainer(
    border: Border.all(color: context.colorTokens.dividerSecondaryColor),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Dimens.dimen8,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _AboutMeSectionExperienceCompanyWidget(labelKey)),
            ClImagePathWidget(
              width: Dimens.dimen120,
              path: imagePath,
              borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen8)),
              padding: const EdgeInsets.all(Dimens.dimen6),
              margin: EdgeInsets.zero,
            ),
          ],
        ),
        Label('label.about_me.experience.description.$labelKey', style: context.textTheme.bodyMedium),
      ],
    ),
  );
}

class _AboutMeSectionExperienceCompanyWidget extends StatelessWidget {
  const _AboutMeSectionExperienceCompanyWidget(this.labelKey);

  final String labelKey;

  @override
  Widget build(BuildContext context) {
    final periodStart = 'label.about_me.experience.period.start.$labelKey'.tr();
    final periodEnd = 'label.about_me.experience.period.end.$labelKey'.tr();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(
          'label.about_me.experience.company_name.$labelKey',
          style: context.textTheme.titleSmall,
          fontWeight: FontWeight.bold,
        ),
        Label('label.about_me.experience.position.$labelKey', style: context.textTheme.bodyLarge),
        Label(
          '$periodStart - ${periodEnd.isEmpty ? 'label.date_time.now'.tr() : periodEnd}',
          translate: false,
          style: context.textTheme.bodyMedium,
          color: context.colorTokens.textSecondary,
        ),
        Label(
          DateFormatter.formatDateTimeToPeriod(periodStart, periodEnd),
          translate: false,
          style: context.textTheme.bodyMedium,
          color: context.colorTokens.textSecondary,
        ),
      ],
    );
  }
}
