import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_label_widget.dart';
import 'package:flutter/material.dart';

class AboutMeExpanded extends StatelessWidget {
  const AboutMeExpanded({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AboutMeLabelWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('About me Expanded')],
          ),
        ],
      );
}
