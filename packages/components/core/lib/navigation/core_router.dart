import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import 'base_router.dart';

@singleton
class CoreRouter extends BaseRouter {
  const CoreRouter();

  @override
  StatefulShellBranch? get statefulShellBranch => null;

  @override
  List<RouteBase> get routes => [];
}
