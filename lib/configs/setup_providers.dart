import 'package:components_library/components_library_export.dart' show AppSettingsProvider, ChangeNotifierProvider;
import 'package:flutter/material.dart' show StatelessWidget, Widget;

class AppSettingsProviderWrapper extends StatelessWidget {
  const AppSettingsProviderWrapper(this.child, {super.key});

  final Widget child;

  @override
  Widget build(_) => ChangeNotifierProvider(create: (_) => AppSettingsProvider(), child: child);
}
