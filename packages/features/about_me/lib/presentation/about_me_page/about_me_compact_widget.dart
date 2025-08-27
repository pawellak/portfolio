import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_contact.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_description.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_education.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_experience.dart';
import 'package:flutter/material.dart';

class AboutMeCompact extends StatelessWidget {
  const AboutMeCompact({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    spacing: Dimens.dimen8,
    children: [
      AboutMeSectionContact(),
      AboutMeSectionDescription(),
      AboutMeSectionEducation(),
      AboutMeSectionExperience(),
    ],
  ).addPadding(top: Dimens.dimen12, bottom: Dimens.dimen12);
}
