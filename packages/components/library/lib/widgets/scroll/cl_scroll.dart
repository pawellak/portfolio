import 'package:flutter/material.dart'
    show Axis, BuildContext, CustomScrollView, SliverFillRemaining, StatelessWidget, Widget;

class ClScroll extends StatelessWidget {
  const ClScroll({super.key, required this.child, this.scrollDirection = Axis.vertical});

  final Widget child;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) => CustomScrollView(
    scrollDirection: scrollDirection,
    slivers: [SliverFillRemaining(hasScrollBody: false, child: child)],
  );
}
