import 'package:flutter/material.dart' show BuildContext, PreferredSizeWidget, Scaffold, StatelessWidget, Widget;

class ClScaffold extends StatelessWidget {
  const ClScaffold({super.key, required this.body, this.drawer, this.appBar});

  final Widget body;
  final Widget? drawer;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) => Scaffold(body: body, drawer: drawer, appBar: appBar);
}
