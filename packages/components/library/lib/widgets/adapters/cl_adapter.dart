import 'package:components_library/components_library_export.dart';
import 'package:flutter/material.dart';

class ClAdapter extends StatelessWidget {
  const ClAdapter({super.key, required this.desktop, required this.mobile});

  final Widget mobile;
  final Widget desktop;

  @override
  Widget build(BuildContext context) => context.isMobile ? mobile : desktop;
}
