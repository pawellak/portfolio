import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_contact.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_education.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_experience.dart';
import 'package:flutter/material.dart';

class AboutMeExpanded extends StatelessWidget {
  const AboutMeExpanded({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    children: [AboutMeSectionContact(), AboutMeSectionEducation(), AboutMeSectionExperience()],
  );
}
