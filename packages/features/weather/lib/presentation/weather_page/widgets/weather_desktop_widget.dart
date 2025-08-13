import 'package:flutter/material.dart';

class WeatherDesktopWidget extends StatelessWidget {
  const WeatherDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) => const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Center(child: Text('Weather1'))],
        ),
        Column(
          children: [Center(child: Text('Weather2'))],
        ),
      ],
    );
}
