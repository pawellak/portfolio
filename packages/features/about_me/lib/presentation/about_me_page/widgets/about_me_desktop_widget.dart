import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';

class AboutMeDesktopWidget extends StatelessWidget {
  const AboutMeDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [Center(child: Label('label.about_me.title'))],
          ),
          Column(
            children: [Center(child: Label('label.about_me.description'))],
          ),
        ],
      );
}
