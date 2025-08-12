import 'package:flutter/material.dart';

class AboutMeDesktopWidget extends StatelessWidget {
  const AboutMeDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Center(child: Text('aboutMe1'))],
        ),
        Column(
          children: [Center(child: Text('aboutMe2'))],
        ),
      ],
    );
}
