import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_section_contact.dart';
import 'package:flutter/material.dart';

class AboutMeExpanded extends StatelessWidget {
  const AboutMeExpanded({super.key});

  @override
  Widget build(BuildContext context) => const Row(
    children: [
      AboutMeSectionContact(),
      // Column(
      //   children: [
      //     AboutMeEducationWidget(
      //       labelKey: 'label.about_me.education.msc_eng',
      //     ),
      //     AboutMeEducationWidget(
      //       labelKey: 'label.about_me.education.msc_eng',
      //     ),
      //   ],
      // ),
    ],
  );
}
