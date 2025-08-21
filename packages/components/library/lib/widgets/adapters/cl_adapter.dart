import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';

class ClAdapter extends StatelessWidget {
  const ClAdapter({super.key, required this.expanded, required this.compact});

  final Widget compact;
  final Widget expanded;

  @override
  Widget build(BuildContext context) => context.isCompact ? compact : expanded;
}
