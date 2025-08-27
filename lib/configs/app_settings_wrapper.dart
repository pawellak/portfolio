import 'package:components_library/components_library_export.dart'
    show AppSettingsProvider, ChangeNotifierProvider, getIt;
import 'package:flutter/material.dart' show SizedBox, StatelessWidget, UniqueKey, Widget;

class AppSettingsWrapper extends StatelessWidget {
  const AppSettingsWrapper(this.child, {super.key});

  final Widget child;

  @override
  Widget build(_) => ChangeNotifierProvider(
    create: (_) => getIt<AppSettingsProvider>(),
    child: SizedBox(key: UniqueKey(), child: child),
  );
}
