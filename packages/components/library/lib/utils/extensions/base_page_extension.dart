import 'package:components_library/components_library_export.dart';

extension BasePageExtension on BasePage {
  GoRoute get toRoute => GoRoute(path: goPath, name: goName, builder: (context, state) => this);

  StatefulShellBranch get toBottomRoute =>
      StatefulShellBranch(routes: [GoRoute(path: goPath, name: goName, builder: (context, state) => this)]);
}
