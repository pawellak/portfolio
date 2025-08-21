import 'package:flutter/material.dart' show BuildContext, Scaffold, StatelessWidget, Widget;

class ClScaffold extends StatelessWidget {
  const ClScaffold({super.key, required this.body, this.drawer});

  final Widget body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) => Scaffold(body: body, drawer: drawer);
}
